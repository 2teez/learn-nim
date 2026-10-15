import asyncdispatch, asyncfile, sugar, os, threadpool, strutils

var filename = ""
if paramCount() == 0:
  while true:
    echo("/etc/passwd - would be assign to your filename. [y|n]")
    let answer = spawn stdin.readLine().toLower()
    case ^answer:
    of "n":
      quit("Usaage: " & getAppFilename() & " <filename>")
    of "y":
      filename = "/etc/passwd"
      break
    else:
      echo("You can only use y for Yes, and n for No")

filename = paramStr(1)

let file = openAsync(filename)
let dataFuture = file.readAll()
dataFuture.callback =
  (data: Future[string]) => echo(data.read())

asyncdispatch.runForever()

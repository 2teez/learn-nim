import asyncdispatch, asyncfile, sugar, os

proc readFiles(filename: string) {.async.} =
  if not fileExists(filename):
    writeFile(filename, "")

  let file = openAsync(filename, fmReadWriteExisting)
  defer:
    file.close()
  let contents = await file.readAll()
  stdout.write(contents)

  await file.write("Hello.. there.. in a file.")

const main = () => waitFor readFiles(".new_file.txt")

when isMainModule:
  main()

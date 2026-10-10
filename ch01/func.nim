proc myName(name: string): string  # forward declaration of procedure
echo myName("javaScript..")

# procedure defination
proc myName(name: string): string =
  "My name is " & name

discard myName("java")  # not using the result of procedure
echo myName("Clojure")

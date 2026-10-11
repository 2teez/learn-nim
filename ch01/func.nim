proc myName(name: string): string  # forward declaration of procedure
echo myName("javaScript..")

# procedure defination
proc myName(name: string): string =
  "My name is " & name

discard myName("java")  # not using the result of procedure
echo myName("Clojure")

proc greaterThan(a, b: int): (int, bool) =
  if a > b: (a, true) else: (b, false)

5.greaterThan(23).echo
23.greaterThan(5).echo

echo greaterThan(3, 2)

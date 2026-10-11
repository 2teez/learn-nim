import sequtils, sugar

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

# using anonymous procedure in nim
# use a named procedure called in another function
# 1.
proc isOdd(num: int): bool =
  num mod 2 != 0

let numbers = @[1,2,3,4,5,6]
const answer = @[1,3,5]
let oddNumbers = filter(numbers, isOdd)
doAssert oddNumbers == answer

# 2.
# using anonymous procedure in another method
let oddNumbersAnon = filter(numbers, proc(num: int): bool = num mod 2 != 0)
assert oddNumbersAnon == answer

# 3.
# using a syntax sugar
let oddNumbersAnon2 = filter(numbers, (x) -> bool => x mod 2 != 0)
doAssert oddNumbersAnon2 == answer

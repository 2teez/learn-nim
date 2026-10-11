# array in nim
var numbers = [1,2,3,4,5]
var evens: array[3, int]
evens[0] = 0
evens[1] = 2
evens[2] = 4

doAssert evens == @[0, 2, 4]
echo evens.repr, numbers.repr # stringify the array collections

# using index of the array
for ind in numbers.low .. numbers.high:
  echo ind, numbers[ind]

# using the values themselves
for item in evens:
  echo item

## using sequence in nim, sequence constructor @[]
var nums: seq[int] = @[]
nums.add(1)

## using newSeq[Type](size) proc of constructing seq
var langs = newSeq[string](3)
langs[0] = "java"
langs[1] = "clojure"
langs[2]= "lips"

# add beyond the specified size
langs.add("nim")
echo langs, langs.len

const multiples = @[4, 16, 32, 64, 128, 256, 528]
for num in 0..<multiples.len:
  stdout.write($num & ": " & $multiples[num] & "; ")
echo ""

# using set in nim

var collection: set[int16]
assert collection == {}

let letterCollections = {'a', 'x', 'r'}
assert 'a' in letterCollections

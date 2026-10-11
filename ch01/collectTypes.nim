# array in nim
var numbers = [1,2,3,4,5]
var evens = array[3, int]
evens[0] = 0
evens[1] = 2
evens[2] = 4

doAssert evens == @[0, 2, 4]

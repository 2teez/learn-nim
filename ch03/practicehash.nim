import tables

proc main() =
  # create and use table which is like map or hash in other langs
  var animalWithAges = toTable[string, int]({
    "Dog": 3,
    "Raccon": 8,
    "Sloth": 1,
    "Cat": 10,
  })
  animalWithAges.echo()
  animalWithAges["Sloth"].echo

when isMainModule:
  main()

import tables, hashes

type
  Dog = object
    name: string
# give a hash proc to make the new type Dog
# hashable to use as a key in table

proc hash(dog: Dog): Hash =
  result = dog.name.hash
  result = !$result

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

  # start a new empty hash/table in nim
  var dogOwners = initTable[Dog, string]()
  dogOwners[Dog(name: "Mavin")] = "Gay"
  dogOwners[Dog(name: "Bingo")] = "Obi"

  dogOwners.echo

when isMainModule:
  main()

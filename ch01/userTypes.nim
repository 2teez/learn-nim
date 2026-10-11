import math
# user defined person type
# type decleration and defination
type
  Person = object
    name: string
    age: int

  PersonRef = ref Person
# type defination
var java = PersonRef(name: "Java", age: 35)
java[].echo

proc setName(person: PersonRef, newName: string) =
  person.name = newName

proc getName(person: Person): string =
  person.name

setName(java, "clojure")
java[].echo
java[].getName.echo

# using tuple as defined types
#

type
  Point = tuple[x, y: float32]
  Point2 = (float32, float32)

proc calulateDistance(pt: Point, pt2: Point2): float =
  let (x, y) = pt
  let (x1, y1) = pt2
  sqrt((y1-y) ^ 2 + (x1-x) ^ 2)

calulateDistance((x: 1'f32, y: 3'f32), (x: 5'f32, y: 6'f32)).echo

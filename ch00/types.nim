type
  Dog = object
    age: int

proc bark(self: Dog) =
  echo("Woof!")

let dog = Dog(age: 3)
echo "Dog", dog, ""
dog.bark()
bark(dog)

proc showNumber(num: int | float) =
  echo(num)

showNumber(3.14)
showNumber(14)

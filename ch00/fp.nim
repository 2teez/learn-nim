import sequtils, sugar #[future]#, strutils

let names = @["james java", "kunle adigun", "iteoluwakisi genuis"]
names.map((x) -> (string, string) => (x.split[0], x.split[1])).echo

# using a for loop
for name in names:
  (name.split[0], name.split[1]).echo

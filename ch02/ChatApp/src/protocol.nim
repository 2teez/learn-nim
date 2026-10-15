import json
type
  Message* = object
    username* : string
    message* : string

proc parseMessage*(data: string): Message =
  let dataJson = parseJson(data)
  result.username = dataJson["username"].getStr()
  result.message = dataJson["message"].getStr()

proc createMessage*(username, message: string): string =
  result = $(%{
    "username": %username,
    "message": %message
  }) & "\c\l"


# new scope with intension to test
when isMainModule:

  block:
    let data = """{"username": "John", "message": "Hi!"}"""
    let parsed = parseMessage(data)
    doAssert parsed.username == "John"
    doAssert parsed.message == "Hi!"

  block:
    let data = """foobar"""

    try:
      discard parseMessage(data)
      doAssert false
    except JsonParsingError:
      discard

  block:
    let expected = """{"username":"dom","message":"hello there"}""" & "\c\l"
    doAssert createMessage("dom", "hello there") == expected
  echo("All tests passed!")

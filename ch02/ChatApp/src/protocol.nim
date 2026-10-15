import json
type
  Message* = object
    username* : string
    message* : string

proc parseMessage*(data: string): Message =
  let dataJson = parseJson(data)
  result.username = dataJson["username"].getStr()
  result.message = dataJson["message"].getStr()

# new scope with intension to test
when isMainModule:
  block:
    let data = """{"username": "John", "message": "Hi!"}"""
    let parsed = parseMessage(data)
    doAssert parsed.username == "John"
    doAssert parsed.message == "Hi!"
  #[#block:
    let data = """foobar"""
    try:
      let parsed = parseMessage(data)
      doAssert false
    except JsonParsingError:
      doAssert false
    except:
      doAssert false
  #]#
echo("All tests passed!")

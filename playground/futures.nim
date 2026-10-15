import asyncdispatch, sugar

var future = newFuture[int]()
doAssert (not future.finished)

future.callback =
 (future: Future[int]) =>
    echo("Future is no longer empty: ", future.read)

future.complete(42)
#future.fail(newException(ValueError, "The future failed"))

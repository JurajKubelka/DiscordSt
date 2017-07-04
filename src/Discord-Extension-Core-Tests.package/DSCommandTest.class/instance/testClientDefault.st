tests
testClientDefault
	command := self newObject.
	self assert: command client isNil.
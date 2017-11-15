tests
testValue
	object := self newObject value: self anyString; yourself.
	self assert: object value equals: self anyString.
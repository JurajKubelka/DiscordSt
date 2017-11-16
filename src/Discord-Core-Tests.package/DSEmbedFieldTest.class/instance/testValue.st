tests
testValue
	object := self newObjectToTest value: self anyString; yourself.
	self assert: object value equals: self anyString.
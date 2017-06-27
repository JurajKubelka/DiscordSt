tests
testName
	object := self newObject name: self anyString; yourself.
	self assert: object name equals: self anyString.
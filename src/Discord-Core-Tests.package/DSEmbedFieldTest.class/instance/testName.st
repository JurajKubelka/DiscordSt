tests
testName
	object := self newObjectToTest name: self anyString; yourself.
	self assert: object name equals: self anyString.
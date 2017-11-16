tests
testHeight
	object := self newObjectToTest.
	object height: 42.
	self assert: object height equals: 42.
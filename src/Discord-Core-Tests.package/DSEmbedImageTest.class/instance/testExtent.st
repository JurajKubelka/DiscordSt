tests
testExtent
	object := self newObjectToTest.
	object width: 41.
	object height: 42.
	self assert: object extent equals: 41 @ 42

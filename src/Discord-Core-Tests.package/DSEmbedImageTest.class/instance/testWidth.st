tests
testWidth
	object := self newObjectToTest.
	object width: 42.
	self assert: object width equals: 42.
tests
testHeight
	object := self newObject.
	object height: 42.
	self assert: object height equals: 42.
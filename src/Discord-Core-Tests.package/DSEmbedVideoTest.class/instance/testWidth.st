tests
testWidth
	object := self newObject.
	object width: 42.
	self assert: object width equals: 42.
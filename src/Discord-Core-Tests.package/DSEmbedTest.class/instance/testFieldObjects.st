tests-accessing
testFieldObjects
	object := self newObject.
	self assert: object fieldObjects isCollection.
	self assert: object fieldObjects class equals: OrderedCollection.
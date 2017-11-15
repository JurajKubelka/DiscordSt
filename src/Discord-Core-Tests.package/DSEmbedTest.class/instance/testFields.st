tests
testFields
	object := self newObject.
	self assert: object fields isCollection.
	self assert: object fields class equals: OrderedCollection.
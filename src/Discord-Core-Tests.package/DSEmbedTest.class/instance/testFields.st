tests
testFields
	object := self newObjectToTest.
	self assert: object fields isCollection.
	self assert: object fields class equals: OrderedCollection.
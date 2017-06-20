tests
testDescription
	object := self newEmbedObject description: self anyString; yourself.
	self assert: object description equals: self anyString.
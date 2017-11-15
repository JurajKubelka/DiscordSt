tests
testUrl
	object := self newEmbedObject url: self anyString; yourself.
	self assert: object url equals: self anyString.
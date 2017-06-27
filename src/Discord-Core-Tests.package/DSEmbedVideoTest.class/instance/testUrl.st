tests
testUrl
	object := self newObject url: self anyString; yourself.
	self assert: object url equals: self anyString.
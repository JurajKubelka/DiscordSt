tests
testUrl
	object := self newObjectToTest url: self anyString; yourself.
	self assert: object url equals: self anyString.
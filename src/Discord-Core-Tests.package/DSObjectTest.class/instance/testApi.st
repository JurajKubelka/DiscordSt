tests
testApi
	object := self newObject.
	object api: self anyString.
	self assert: object api equals: self anyString.
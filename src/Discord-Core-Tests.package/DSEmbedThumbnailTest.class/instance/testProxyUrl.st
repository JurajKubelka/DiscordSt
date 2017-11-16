tests
testProxyUrl
	object := self newObjectToTest.
	object proxyUrl: self anyString.
	self assert: object proxyUrl equals: self anyString.

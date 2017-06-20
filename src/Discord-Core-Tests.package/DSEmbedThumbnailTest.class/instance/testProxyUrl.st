tests
testProxyUrl
	object := self newObject.
	object proxyUrl: self anyString.
	self assert: object proxyUrl equals: self anyString.

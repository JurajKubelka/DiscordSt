tests
testProxyUrl
	attachment := self newAttachment.
	attachment proxyUrl: self anyString.
	self assert: attachment proxyUrl equals: self anyString.
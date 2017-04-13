tests
testProxyIconUrl
	object := self newEmbedFooterObject proxyIconUrl: self anyString; yourself.
	self assert: object proxyIconUrl equals: self anyString.
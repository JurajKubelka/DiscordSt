tests
testFooterIconUrl
	object := self newEmbedObject footerIconUrl: self anyString; yourself.
	self assert: object footer iconUrl equals: self anyString.
tests
testIconUrl
	object := self newEmbedFooterObject iconUrl: self anyString; yourself.
	self assert: object iconUrl equals: self anyString.
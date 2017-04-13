tests
testEnsureFooter
	object := self newEmbedObject.
	self assert: object ensureFooter class equals: DSEmbedFooterObject.
	self assert: object ensureFooter == object ensureFooter.
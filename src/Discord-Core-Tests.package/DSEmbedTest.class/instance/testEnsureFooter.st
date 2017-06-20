tests
testEnsureFooter
	object := self newEmbedObject.
	self assert: object ensureFooter class equals: DSEmbedFooter.
	self assert: object ensureFooter == object ensureFooter.
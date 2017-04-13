tests
testFooter
	| footer |
	footer := self newEmbedFooterObject.
	object := self newEmbedObject footer: footer; yourself.
	self assert: object footer == footer.
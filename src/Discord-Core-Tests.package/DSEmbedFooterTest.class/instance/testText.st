tests
testText
	object := self newEmbedFooterObject text: self anyString; yourself.
	self assert: object text equals: self anyString.
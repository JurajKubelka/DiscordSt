tests
testFooterText
	object := self newEmbedObject footerText: self anyString; yourself.
	self assert: object footer text equals: self anyString.
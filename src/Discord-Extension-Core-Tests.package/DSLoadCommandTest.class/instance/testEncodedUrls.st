tests-accessing
testEncodedUrls
	command := self newCommand.
	command encodedUrls: self anyString.
	self assert: command encodedUrls equals: self anyString.
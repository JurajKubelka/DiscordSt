tests-accessing
testEncodedUrls
	command := self newObject.
	command encodedUrls: self anyString.
	self assert: command encodedUrls equals: self anyString.
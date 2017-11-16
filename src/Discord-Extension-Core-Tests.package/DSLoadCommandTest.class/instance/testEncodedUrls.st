tests-accessing
testEncodedUrls
	command := self newObjectToTest.
	command encodedUrls: self anyString.
	self assert: command encodedUrls equals: self anyString.
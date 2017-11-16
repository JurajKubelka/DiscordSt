tests-accessing
testShouldDownloadDataDirectly
	command := self newObjectToTest.
	command encodedUrls: self encodedDataString.
	self assert: command shouldDownloadDataDirectly.
	
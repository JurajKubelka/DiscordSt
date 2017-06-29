tests-accessing
testShouldDownloadDataDirectly
	command := self newObject.
	command encodedUrls: self encodedDataString.
	self assert: command shouldDownloadDataDirectly.
	
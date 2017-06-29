tests-accessing
testShouldDownloadDataDirectly
	command := self newCommand.
	command encodedUrls: self encodedDataString.
	self assert: command shouldDownloadDataDirectly.
	
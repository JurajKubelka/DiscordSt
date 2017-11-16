tests-accessing
testShouldDownloadDataDirectlyDefault
	command := self newObjectToTest.
	self deny: command shouldDownloadDataDirectly.
	
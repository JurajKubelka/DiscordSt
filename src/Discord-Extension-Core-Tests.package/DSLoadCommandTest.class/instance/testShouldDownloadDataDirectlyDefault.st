tests-accessing
testShouldDownloadDataDirectlyDefault
	command := self newObject.
	self deny: command shouldDownloadDataDirectly.
	
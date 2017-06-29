tests-accessing
testShouldDownloadDataDirectlyDefault
	command := self newCommand.
	self deny: command shouldDownloadDataDirectly.
	
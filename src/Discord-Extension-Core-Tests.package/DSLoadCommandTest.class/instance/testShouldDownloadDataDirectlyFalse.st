tests-accessing
testShouldDownloadDataDirectlyFalse
	command := self newCommand.
	command encodedFuelId: self encodedFuelIdString.
	self deny: command shouldDownloadDataDirectly.
	
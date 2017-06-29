tests-accessing
testShouldDownloadDataDirectlyFalse
	command := self newObject.
	command encodedFuelId: self encodedFuelIdString.
	self deny: command shouldDownloadDataDirectly.
	
tests-accessing
testShouldDownloadDataDirectlyFalse
	command := self newObjectToTest.
	command encodedFuelId: self encodedFuelIdString.
	self deny: command shouldDownloadDataDirectly.
	
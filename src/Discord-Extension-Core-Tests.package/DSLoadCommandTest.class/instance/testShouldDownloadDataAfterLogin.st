tests-accessing
testShouldDownloadDataAfterLogin
	command := self newObjectToTest.
	command encodedFuelId: self encodedFuelIdString.
	self assert: command shouldDownloadDataAfterLogin.
	
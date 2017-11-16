tests-accessing
testShouldDownloadDataAfterLoginFalse
	command := self newObjectToTest.
	command encodedFuelId: self encodedFuelIdString.
	command encodedUrls: self encodedDataString.
	self deny: command shouldDownloadDataAfterLogin.
	
tests-accessing
testShouldDownloadDataAfterLoginFalse
	command := self newObject.
	command encodedFuelId: self encodedFuelIdString.
	command encodedUrls: self encodedDataString.
	self deny: command shouldDownloadDataAfterLogin.
	
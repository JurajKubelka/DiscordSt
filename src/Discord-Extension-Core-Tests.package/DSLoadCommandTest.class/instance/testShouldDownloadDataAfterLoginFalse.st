tests-accessing
testShouldDownloadDataAfterLoginFalse
	command := self newCommand.
	command encodedFuelId: self encodedFuelIdString.
	command encodedUrls: self encodedDataString.
	self deny: command shouldDownloadDataAfterLogin.
	
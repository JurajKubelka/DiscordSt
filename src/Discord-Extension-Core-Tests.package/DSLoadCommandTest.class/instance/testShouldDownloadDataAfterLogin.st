tests-accessing
testShouldDownloadDataAfterLogin
	command := self newCommand.
	command encodedFuelId: self encodedFuelIdString.
	self assert: command shouldDownloadDataAfterLogin.
	
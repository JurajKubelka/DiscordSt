tests-accessing
testShouldDownloadDataAfterLogin
	command := self newObject.
	command encodedFuelId: self encodedFuelIdString.
	self assert: command shouldDownloadDataAfterLogin.
	
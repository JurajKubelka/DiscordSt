tests-accessing
testShouldDownloadDataAfterLoginDefault
	command := self newObjectToTest.
	self deny: command shouldDownloadDataAfterLogin.
	
tests-accessing
testShouldDownloadDataAfterLoginDefault
	command := self newObject.
	self deny: command shouldDownloadDataAfterLogin.
	
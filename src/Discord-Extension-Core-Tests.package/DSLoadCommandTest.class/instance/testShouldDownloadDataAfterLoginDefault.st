tests-accessing
testShouldDownloadDataAfterLoginDefault
	command := self newCommand.
	self deny: command shouldDownloadDataAfterLogin.
	
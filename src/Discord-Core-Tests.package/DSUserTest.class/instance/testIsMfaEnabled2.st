tests
testIsMfaEnabled2
	user := self newUser.
	user isMfaEnabled: false.
	self deny: user isMfaEnabled.

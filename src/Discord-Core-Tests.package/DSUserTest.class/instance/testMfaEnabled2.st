tests
testMfaEnabled2
	user := self newUser.
	user mfaEnabled: false.
	self deny: user mfaEnabled.

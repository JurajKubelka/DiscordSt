tests
testMfaEnabled
	user := self newUser.
	user mfaEnabled: true.
	self assert: user mfaEnabled.

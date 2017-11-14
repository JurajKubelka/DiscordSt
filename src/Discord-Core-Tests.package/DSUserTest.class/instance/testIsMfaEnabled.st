tests
testIsMfaEnabled
	user := self newUser.
	user isMfaEnabled: true.
	self assert: user isMfaEnabled.

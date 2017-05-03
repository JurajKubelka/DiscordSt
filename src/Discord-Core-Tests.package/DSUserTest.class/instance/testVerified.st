tests
testVerified
	user := self newUser.
	user verified: true.
	self assert: user verified.

tests
testIsVerified
	user := self newUser.
	user isVerified: true.
	self assert: user isVerified.

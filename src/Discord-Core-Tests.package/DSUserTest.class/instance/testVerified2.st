tests
testVerified2
	user := self newUser.
	user verified: false.
	self deny: user verified.

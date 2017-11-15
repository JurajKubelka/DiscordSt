tests
testIsVerified2
	user := self newUser.
	user isVerified: false.
	self deny: user isVerified.

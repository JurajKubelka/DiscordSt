tests
testIsBot2
	user := self newUser.
	user isBot: false.
	self deny: user isBot
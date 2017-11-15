tests
testIsBot
	user := self newUser.
	user isBot: true.
	self assert: user isBot
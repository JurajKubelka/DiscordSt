tests
testBot
	user := self newUser.
	user bot: true.
	self assert: user bot.
	self assert: user isBot
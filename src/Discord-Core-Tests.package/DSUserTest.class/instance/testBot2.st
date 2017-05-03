tests
testBot2
	user := self newUser.
	user bot: false.
	self deny: user bot.
	self deny: user isBot
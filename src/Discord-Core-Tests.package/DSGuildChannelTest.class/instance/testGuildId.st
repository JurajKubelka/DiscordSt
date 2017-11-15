tests
testGuildId
	channel := self newChannel.
	channel guildId: self anyString.
	self assert: channel guildId equals: self anyString.
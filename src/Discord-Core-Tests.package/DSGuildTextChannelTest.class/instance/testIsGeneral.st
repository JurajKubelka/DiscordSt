tests
testIsGeneral
	channel := self newChannel.
	channel id: self anyString; guildId: self anyString; yourself.
	self assert: channel isGeneral
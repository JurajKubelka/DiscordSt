tests
testIsGeneral2
	channel := self newChannel.
	channel id: self anyString; guildId: self anyStringTwo; yourself.
	self deny: channel isGeneral
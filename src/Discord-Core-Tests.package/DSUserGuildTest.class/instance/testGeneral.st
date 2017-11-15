tests
testGeneral
	guildChannels := self newGuildChannelsInCategory.
	guild := self newUserGuild.
	guild id: self anyString.
	guild restApi: self.
	self assert: guild general notNil.
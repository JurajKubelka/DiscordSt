tests
testGeneral
	guildChannels := self newGuildChannelsInCategory.
	guild := self newUserGuild.
	guild channels: guildChannels.
	self assert: guild general notNil.
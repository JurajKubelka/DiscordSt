tests
testChannelNamedInCategory
	| channel |
	guildChannels := self newGuildChannelsInCategory.
	guild := self newUserGuild.
	guild id: self anyString.
	guild restApi: self.
	channel := guild channelNamed: 'sprint'.
	self assert: channel name equals: 'sprint'.
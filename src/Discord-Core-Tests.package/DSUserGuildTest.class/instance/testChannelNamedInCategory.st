tests
testChannelNamedInCategory
	| channel |
	guildChannels := self newGuildChannelsInCategory.
	guild := self newUserGuild.
	guild channels: guildChannels.
	channel := guild channelNamed: 'sprint'.
	self assert: channel name equals: 'sprint'.
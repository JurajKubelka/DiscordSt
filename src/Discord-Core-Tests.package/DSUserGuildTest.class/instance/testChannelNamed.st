tests
testChannelNamed
	| channel |
	guild := self newUserGuild.
	guild id: self anyString.
	guild restApi: self.
	guildChannels := self newGuildChannelsTwo.
	channel := guild channelNamed: 'sprint'.
	self assert: channel name equals: 'sprint'.
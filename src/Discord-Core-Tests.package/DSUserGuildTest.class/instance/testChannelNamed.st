tests
testChannelNamed
	| channel |
	guild := self newUserGuild.
	guild channels: self newGuildChannelsTwo.
	channel := guild channelNamed: 'sprint'.
	self assert: channel name equals: 'sprint'.
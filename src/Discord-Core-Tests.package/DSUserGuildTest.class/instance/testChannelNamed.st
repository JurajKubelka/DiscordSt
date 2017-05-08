tests
testChannelNamed
	| channel |
	guild := self newUserGuild.
	guild id: self anyString.
	guild api: self.
	channel := guild channelNamed: 'sprint'.
	self assert: channel name equals: 'sprint'.
tests
testGuildNamedChannelNamedNotExisting2
	| result |
	client := self newClient.
	result := client guildNamed: 'Guild Name' channelNamed: 'Channel Name'.
	self assert: result isNil.
tests
testGuildNamedChannelNamed
	| guild result channel |
	client := self newClient.
	guild := DSGuild new name: 'Guild Name'; yourself.
	channel := DSGuildTextChannel new name: 'Channel Name'; yourself.
	guild channels: (DSChannels with: channel).
	client guilds: (DSGuilds with: guild).
	result := client guildNamed: 'Guild Name' channelNamed: 'Channel Name'.
	self assert: result equals: channel.
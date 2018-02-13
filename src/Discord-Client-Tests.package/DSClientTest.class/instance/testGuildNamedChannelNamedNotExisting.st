tests
testGuildNamedChannelNamedNotExisting
	| guild result |
	client := self newClient.
	guild := (DSGuild new name: 'Guild Name').
	client guilds: (DSGuilds with: guild).
	result := client guildNamed: 'Guild Name' channelNamed: 'Channel Name'.
	self assert: result isNil.
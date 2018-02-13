accessing - convenience
guildNamed: aString channelNamed: aString2 
	<return: #DSChannel or: nil>
	^ (self guildNamed: aString)
		ifNotNil: [ :aGuild | aGuild channelNamed: aString2 ]
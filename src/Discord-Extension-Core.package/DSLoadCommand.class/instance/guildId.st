accessing
guildId
	guildId ifNil: [ self decodeFuelId ].
	^ guildId
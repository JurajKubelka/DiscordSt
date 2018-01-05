private - parsing
parseGuildMembers: response
	| members |
	members := DSModelJsonMapping
		read: #CollectionOfGuildMembers
		withMapping: #collectionOfGuildMembersMappingFor:
		on: response contents readStream.
	^ members
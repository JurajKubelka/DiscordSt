private - parsing
parseGuildMembers: response
	| members |
	members := DSModelJsonMapping
		read: #CollectionOfGuildMembers
		withMapping: #collectionOfGuildMembersMappingFor:
		on: response contents readStream.
	members do: [ :eachMember | eachMember user restApi: self ].
	^ members
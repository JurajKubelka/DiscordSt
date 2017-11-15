mapping - message
collectionOfReactionsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfReactions customDo: [ :mapping |
			mapping listOfElementSchema: DSReaction ].
	self reactionMappingFor: aNeoJSONMapper.
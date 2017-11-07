mapping - guild
collectionOfPresenceUpdatesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfPresenceUpdates customDo: [ :mapping |
			mapping listOfElementSchema: DSPresenceUpdate ].
	self presenceUpdateMappingFor: aNeoJSONMapper.
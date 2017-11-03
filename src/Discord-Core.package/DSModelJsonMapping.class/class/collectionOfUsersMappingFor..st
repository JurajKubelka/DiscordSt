mapping - message
collectionOfUsersMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfUsers customDo: [ :mapping |
			mapping listOfElementSchema: DSUser ].
	self userMappingFor: aNeoJSONMapper.
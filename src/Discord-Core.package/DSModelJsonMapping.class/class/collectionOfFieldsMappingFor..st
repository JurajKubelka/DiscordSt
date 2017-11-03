mapping
collectionOfFieldsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfFields customDo: [ :mapping |
			mapping listOfElementSchema: DSEmbedField ].
	self embedFieldMappingFor: aNeoJSONMapper.

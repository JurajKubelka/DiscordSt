mapping - message
collectionOfEmbedsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfEmbeds customDo: [ :mapping |
			mapping listOfElementSchema: DSEmbed ].
	self embedMappingFor: aNeoJSONMapper.
mapping - channel
collectionOfOverwritesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfOverwrites customDo: [ :mapping |
			mapping listOfElementSchema: DSOverwrite ].
	self overwriteMappingFor: aNeoJSONMapper.

mapping - message
collectionOfMessagesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfMessages customDo: [ :mapping |
			mapping listOfType: DSMessages andElementSchema: DSMessage ].
	self messageMappingFor: aNeoJSONMapper.
mapping - channel
collectionOfUnspecifiedChannelsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfUnspecifiedChannels customDo: [ :mapping |
			mapping listOfElementSchema: DSUnspecifiedChannel ].
	self unspecifiedChannelMappingFor: aNeoJSONMapper.

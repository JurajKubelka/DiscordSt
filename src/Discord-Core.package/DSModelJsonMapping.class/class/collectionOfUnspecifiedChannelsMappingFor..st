mapping - channel
collectionOfUnspecifiedChannelsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfUnspecifiedChannels customDo: [ :mapping |
			mapping listOfType: DSChannels andElementSchema: DSUnspecifiedChannel ].
	self unspecifiedChannelMappingFor: aNeoJSONMapper.

mapping - channel
collectionOfChannelsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfChannels customDo: [ :mapping |
			mapping listOfElementSchema: DSNewChannel ].
	self channelMappingFor: aNeoJSONMapper.

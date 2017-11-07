mapping - guild
collectionOfVoiceStatesMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfVoiceStates customDo: [ :mapping |
			mapping listOfElementSchema: DSVoiceState ].
	self voiceStateMappingFor: aNeoJSONMapper.
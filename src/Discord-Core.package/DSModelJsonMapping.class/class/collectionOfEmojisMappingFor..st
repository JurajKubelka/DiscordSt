mapping - message
collectionOfEmojisMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfEmojis customDo: [ :mapping |
			mapping listOfElementSchema: DSEmoji ].
	self emojiMappingFor: aNeoJSONMapper.
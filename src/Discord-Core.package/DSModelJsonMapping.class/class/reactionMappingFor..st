mapping - message
reactionMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSReaction do: [ :mapping |
	      mapping mapAccessor: #count.
	      mapping mapAccessor: #me.
	      (mapping mapAccessor: #emoji) valueSchema: DSEmoji ].
	self emojiMappingFor: aNeoJSONMapper.
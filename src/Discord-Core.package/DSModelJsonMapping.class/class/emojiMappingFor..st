mapping - message
emojiMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmoji do: [ :mapping |
	      mapping mapAccessor: #id.
	      mapping mapAccessor: #name.
	      (mapping mapAccessor: #roles) valueSchema: #CollectionOfRoles.
			(mapping mapAccessor: #user) valueSchema: DSUser.
			mapping mapAccessor: #requireColons to: #require_colons.
			mapping mapAccessor: #managed ].
	self
		collectionOfRolesMappingFor: aNeoJSONMapper;
		userMappingFor: aNeoJSONMapper.
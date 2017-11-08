*Discord-Client
clientSessionTokenMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSSession do: [ :mapping |
	      mapping mapAccessor: #token ]
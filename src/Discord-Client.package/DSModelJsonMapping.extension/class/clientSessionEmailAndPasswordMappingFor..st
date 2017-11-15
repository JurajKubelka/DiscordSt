*Discord-Client
clientSessionEmailAndPasswordMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSSession do: [ :mapping |
	      mapping mapAccessor: #email.
			mapping mapAccessor: #password ]
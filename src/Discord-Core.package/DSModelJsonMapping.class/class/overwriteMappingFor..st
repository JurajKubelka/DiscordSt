mapping - channel
overwriteMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSOverwrite do: [ :mapping |
	      (mapping mapAccessor: #id).
			(mapping mapAccessor: #type).
			(mapping mapAccessor: #allow).
			(mapping mapAccessor: #deny) ].
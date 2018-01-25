mapping - message
recipientMappingFor: aNeoJSONMapper 
	aNeoJSONMapper
		for: DSUser do: [ :mapping |
	      mapping mapAccessor: #id to: #recipient_id ].
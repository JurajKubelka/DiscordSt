mapping - message
attachmentMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSAttachment do: [ :mapping |
	      mapping mapAccessor: #id.
	      mapping mapAccessor: #filename.
	      mapping mapAccessor: #fileSize to: #size.
			mapping mapAccessor: #url.
			mapping mapAccessor: #proxyUrl to: #proxy_url.
			mapping mapAccessor: #height.
			mapping mapAccessor: #width ].
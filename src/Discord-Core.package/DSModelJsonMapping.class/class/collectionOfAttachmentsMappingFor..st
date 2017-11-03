mapping - message
collectionOfAttachmentsMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: #CollectionOfAttachments customDo: [ :mapping |
			mapping listOfElementSchema: DSAttachment ].
	self attachmentMappingFor: aNeoJSONMapper.
mapping - embed
embedMappingFor: aNeoJSONMapper
	aNeoJSONMapper
		for: DSEmbed do: [ :mapping |
	      (mapping mapAccessor: #title).
			(mapping mapAccessor: #type).
			(mapping mapAccessor: #description).
			(mapping mapAccessor: #url) valueSchema: ZnUrl.
			(mapping mapAccessor: #timestamp) valueSchema: DateAndTime.
			(mapping mapAccessor: #color) valueSchema: Color.
			(mapping mapAccessor: #footer) valueSchema: DSEmbedFooter.
			(mapping mapAccessor: #image) valueSchema: DSEmbedImage.
			(mapping mapAccessor: #thumbnail) valueSchema: DSEmbedThumbnail.
			(mapping mapAccessor: #video) valueSchema: DSEmbedVideo.
			(mapping mapAccessor: #provider) valueSchema: DSEmbedProvider.
			(mapping mapAccessor: #author) valueSchema: DSEmbedAuthor.
			(mapping mapAccessor: #fields) valueSchema: #CollectionOfFields. ].
	self 
		urlMappingFor: aNeoJSONMapper;
		dateAndTimeMappingFor: aNeoJSONMapper;
		colorMappingFor: aNeoJSONMapper;
		embedFooterMappingFor: aNeoJSONMapper;
		embedImageMappingFor: aNeoJSONMapper;
		embedThumbnailMappingFor: aNeoJSONMapper;
		embedVideoMappingFor: aNeoJSONMapper;
		embedProviderMappingFor: aNeoJSONMapper;
		embedAuthorMappingFor: aNeoJSONMapper;
		collectionOfFieldsMappingFor: aNeoJSONMapper.
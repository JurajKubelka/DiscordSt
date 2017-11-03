json examples
jsonEmbedOneField
	^ '{"title":"title of embed","type":"rich","description":"description of embed","url":"http://example.com/embed.html","timestamp":"2017-11-03T15:21:38.579+00:00","color":16711680,"footer":',
	self jsonEmbedFooter, 
	',"image":', self jsonEmbedImage,
	',"thumbnail":', self jsonEmbedThumbnail,
	',"video":', self jsonEmbedVideo,
	',"provider":', self jsonEmbedProvider,
	',"author":', self jsonEmbedAuthor,
	',"fields":', self jsonEmbedFieldsOne, '}'
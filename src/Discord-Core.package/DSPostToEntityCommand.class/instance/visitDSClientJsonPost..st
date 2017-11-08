as yet unclassified
visitDSClientJsonPost: aDSClientJsonPost 
	self entity: (
		ZnEntity text: (
			DSModelJsonMapping write: aDSClientJsonPost mappedTo: #clientPostMappingFor:)).
	self entity contentType: ZnMimeType applicationJson.
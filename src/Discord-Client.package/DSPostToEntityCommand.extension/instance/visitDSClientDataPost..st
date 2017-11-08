*Discord-Client
visitDSClientDataPost: aDSClientDataPost 
	| part payloadJson |
	self entity: ZnMultiPartFormDataEntity new.
	payloadJson := DSModelJsonMapping write: aDSClientDataPost mappedTo: #clientPostMappingFor:.
	part := ZnMimePart fieldName: 'payload_json' value: payloadJson.
	entity addPart: part.
	aDSClientDataPost fileParts do: [ :eachPart |
		entity addPart: eachPart ].
adding
addFileName: aString form: aForm 
	| encoded |
	encoded := ByteArray new writeStream.
	PNGReadWriter putForm: aForm onStream: encoded.
	self fileParts 
		add: (ZnMimePart 
			fieldName: aString 
			fileName: aString 
			entity: (ZnEntity bytes: encoded contents))
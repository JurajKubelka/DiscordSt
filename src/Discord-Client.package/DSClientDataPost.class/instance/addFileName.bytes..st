adding
addFileName: aString bytes: aByteArray
	self fileParts 
		add: (ZnMimePart 
			fieldName: aString
			fileName: aString 
			entity: (ZnEntity bytes: aByteArray))
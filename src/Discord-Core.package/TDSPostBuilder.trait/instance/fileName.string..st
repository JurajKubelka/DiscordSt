protocol - attachment
fileName: fileNameString string: aString 
	"Add a string as an attachment with charset UTF-8."
	self 
		fileName: fileNameString 
		entity: (ZnEntity text: aString)
protocol - attachment
fileName: aString entity: aZnEntity 
	"Add a byte array as an attachment."
	self dataPost addMimePart: (ZnMimePart 
			fieldName: aString
			fileName: aString 
			entity: aZnEntity)
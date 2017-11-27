protocol - attachment
fileName: aString bytes: aByteArray 
	"Add a byte array as an attachment."
	self 
		fileName: aString 
		entity: (ZnEntity bytes: aByteArray)
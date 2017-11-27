protocol - attachment
fileName: aString form: aForm 
	"Add a form as a PNG image (screenshot) attachment."
	| encoded |
	encoded := ByteArray new writeStream.
	PNGReadWriter putForm: aForm onStream: encoded.
	self 
		fileName: aString 
		entity: ((ZnEntity bytes: encoded contents) 
				contentType: ZnMimeType imagePng;
				yourself).
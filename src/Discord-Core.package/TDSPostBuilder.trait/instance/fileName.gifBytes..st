protocol - attachment
fileName: fileNameString gifBytes: bytes
	"Add the bytes as a GIF image attachment."
	self 
		fileName: fileNameString
		entity: ((ZnEntity bytes: bytes) 
				contentType: ZnMimeType imageGif;
				yourself).
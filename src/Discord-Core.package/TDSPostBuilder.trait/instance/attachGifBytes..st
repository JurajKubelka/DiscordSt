protocol - attachment
attachGifBytes: bytes
	"Add the bytes as a GIF image attachment."
	self 
		fileName: self generateGifFileName 
		gifBytes: bytes
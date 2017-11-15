private
formFromBase64Png: aSymbolOrBlock
	"Return a Form of a given PNG file, encoded as a base64."
	<return: #Form>
	^ PNGReadWriter 
		formFromStream: (aSymbolOrBlock cull: self) base64Decoded asByteArray readStream
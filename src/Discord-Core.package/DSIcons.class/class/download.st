bytes
download
	^ self icons 
		at: #download 
		ifAbsentPut: [ PNGReadWriter formFromStream: self downloadPNGBase64 base64Decoded asByteArray readStream ]
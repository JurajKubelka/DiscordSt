bytes
discord
	^ self icons at: #discord ifAbsentPut: [ PNGReadWriter formFromStream: self discordPNGByteArray readStream ]
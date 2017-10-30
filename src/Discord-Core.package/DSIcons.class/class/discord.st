icons
discord
	<gtExample>
	<label: 'Discord logo 16x16'>
	^ self icons 
		at: #discord 
		ifAbsentPut: [ PNGReadWriter formFromStream: self discordPNGByteArray readStream ]
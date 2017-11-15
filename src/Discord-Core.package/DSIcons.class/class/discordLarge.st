icons
discordLarge
	<gtExample>
	<label: 'Discord logo 398x398'>
	^ self icons 
		at: #discordLarge 
		ifAbsentPut: [ self formFromBase64Png: #discordPNGLargeBase64 ]
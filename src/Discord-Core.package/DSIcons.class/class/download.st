icons
download
	<gtExample>
	^ self icons 
		at: #download 
		ifAbsentPut: [ self formFromBase64Png: #downloadPNGBase64 ]
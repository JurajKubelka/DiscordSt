protocol - attachment
attachForm: aForm
	"Add aFrom as a PNG image attachment."
	self 
		fileName: self generatePngFileName 
		form: aForm
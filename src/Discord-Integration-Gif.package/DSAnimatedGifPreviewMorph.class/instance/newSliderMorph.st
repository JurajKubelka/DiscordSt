instance creation
newSliderMorph
	^ self theme 
		newSliderIn: self
		for: self 
		getValue: #sliderIndex 
		setValue: #sliderIndex: 
		min: 1 
		max: 1 
		quantum: 1 
		getEnabled: #hasForms 
		help: 'Preview animated GIF frames'
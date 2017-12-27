instance creation
newLabelMorph
	^ (DSScreenshotCheckboxLabelMorph contents: self name)
			model: self;
			getTextSelector: #name;
			getFormSelector: #screenshotForm;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself
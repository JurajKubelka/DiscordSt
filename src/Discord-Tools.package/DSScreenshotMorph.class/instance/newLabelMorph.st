instance creation
newLabelMorph
	^ (DSScreenshotLabelMorph contents: self name)
			model: self;
			getTextSelector: #name;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself
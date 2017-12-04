instance creation
newLabelMorph
	^ (DSScreenshotItemLabelMorph contents: self name)
			model: self;
			getTextSelector: #name;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself
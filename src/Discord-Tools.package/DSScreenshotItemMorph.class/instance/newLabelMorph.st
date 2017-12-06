instance creation
newLabelMorph
	^ (DSScreenshotItemLabelMorph contents: self name)
			model: self;
			getTextSelector: #name;
			getMorphSelector: #screenshot;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself
instance creation
newScreenshotMorph
	^ DSScreenshotMorph new
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		yourself
instance creation
newScreenshotMorph
	^ DSScreenshotItemMorph new
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		onAnnouncement: #isSelected send: #isScreenshotSelected: to: self;
		yourself
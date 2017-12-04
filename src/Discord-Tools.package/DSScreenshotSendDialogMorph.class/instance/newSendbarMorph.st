instance creation
newSendbarMorph
	^ DSScreenshotSendbarMorph new
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap;
		onAnnouncement: #cancelAction send: #cancelAction to: self;
		onAnnouncement: #sendAction send: #sendAction to: self;
		yourself
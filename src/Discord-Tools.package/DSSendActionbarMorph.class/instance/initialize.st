initialization
initialize
	super initialize.
	self
		color: Color transparent;
		changeTableLayout;
		cellInset: 8;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		addMorphBack: self newRegistriesMorph;
		addMorphBack: self newCancelButtonMorph;
		addMorphBack: self newSendButtonMorph
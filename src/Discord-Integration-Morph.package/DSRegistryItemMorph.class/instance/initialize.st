initialization
initialize
	super initialize.
	self 			
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		fillStyle: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 8;
		cellPositioning: #leftCenter.
	self addMorphBack: self newIconMorph.
	self addMorphBack: self newNameMorph.
initialization
initialize
	super initialize.
	registry := DSClientRegistry new.
	self 			
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		fillStyle: Color transparent;
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 8;
		cellPositioning: #topCenter.
	self addMorphBack: (self newRowMorph
		addMorphBack: self newIconMorph;
		addMorphBack: self newNameMorph;
		yourself).
	self addMorphBack: (self newRowMorph
		addMorphBack: self newServerList;
		addMorphBack: self newChanneList;
		yourself).
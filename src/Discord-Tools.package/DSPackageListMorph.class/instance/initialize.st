initialization
initialize
	super initialize.
	self 
		fillStyle: Color transparent;
		changeTableLayout;
		cellInset: 8;
		cellPositioning: #leftCenter;
		hResizing: #spaceFill;
		vResizing: #spaceFill.
	table := self newTable.
	self addMorphBack: table.
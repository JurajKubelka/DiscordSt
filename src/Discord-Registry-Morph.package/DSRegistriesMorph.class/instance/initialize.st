initialization
initialize
	super initialize.
	registries := DSNoRegistries uniqueInstance.
	self 
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		fillStyle: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 8;
		cellPositioning: #leftCenter.
	self addMorphBack: self newDropListMorph.
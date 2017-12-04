initialization
initialize
	super initialize.
	isSelected := true.
	self 
		fillStyle: Color transparent;
		changeTableLayout;
		listDirection: #leftToRight;
		cellInset: 8;
		cellPositioning: #center.
	self addMorphBack: self newCheckboxMorph.
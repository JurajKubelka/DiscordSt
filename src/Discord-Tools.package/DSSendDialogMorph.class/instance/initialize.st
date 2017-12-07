initialization
initialize
	super initialize.
	text := '' asText.
	self
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		fillStyle: Color transparent; "non pane color tracking"
		changeTableLayout;
		cellInset: 8;
		cellPositioning: #leftCenter.
	self addMorphBack: self newCommentTextMorph.
	self addMorphBack: self newScreenshotMorph.
	self addMorphBack: self newPackageListMorph.
	self addMorphBack: self newSendbarMorph.

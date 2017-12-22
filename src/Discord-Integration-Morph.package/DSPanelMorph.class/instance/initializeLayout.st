initialization
initializeLayout
	self
		fillStyle: Color transparent;
		cellInset: 8;
		changeTableLayout;
		listDirection: self defaultListDirection;
		hResizing: self defaultHorizontalResizing;
		vResizing: self defaultVerticalResizing;
		cellPositioning: self defaultCellPositioning
initialization
initializeLayout
	self
		fillStyle: Color transparent;
		cellInset: self defaultCellInset;
		changeTableLayout;
		listDirection: self defaultListDirection;
		hResizing: self defaultHorizontalResizing;
		vResizing: self defaultVerticalResizing;
		cellPositioning: self defaultCellPositioning
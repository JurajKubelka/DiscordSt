instance creation
newTable
	^ FTTableMorph new
		allowsDeselection: true;
		beMultipleSelection;
		beResizable;
		dragEnabled: true;
		dropEnabled: true;
		"onAnnouncement: FTSelectionChanged send: #selectionChanged: to: self;"
		addColumn: self newTableColumn;
		dataSource: self newDataSource;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself
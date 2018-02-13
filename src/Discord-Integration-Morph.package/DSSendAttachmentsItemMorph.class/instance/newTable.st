instance creation
newTable
	^ FTTableMorph new
		allowsDeselection: true;
		beMultipleSelection;
		beResizable;
		dragEnabled: true;
		dropEnabled: true;
		addColumn: self newTableColumn;
		dataSource: self newDataSource;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself
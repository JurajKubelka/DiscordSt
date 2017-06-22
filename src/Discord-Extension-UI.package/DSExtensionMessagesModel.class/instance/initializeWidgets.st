initialization
initializeWidgets
	listModel := FastTableModel new
		displayBlock: [ :node | self buildListItemMorphFor: node ];
		icons: [ :node | self iconFor: node ];
		allowToSelect: true;
		yourself.

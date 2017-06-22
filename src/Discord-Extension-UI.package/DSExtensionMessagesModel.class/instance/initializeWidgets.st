initialization
initializeWidgets
	listModel := FastTableModel new
		displayBlock: [ :node | self buildListItemMorphFor: node ];
		icons: [ :node | self iconFor: node ];
		allowToSelect: true;
		yourself.
	toolbarModel := self instantiate: DSExtensionRadioButtonsModel.
	(toolbarModel addRadioButtonIdentified: #all) label: 'All'; state: true.
	(toolbarModel addRadioButtonIdentified: #fuel) label: 'FUEL'.
	
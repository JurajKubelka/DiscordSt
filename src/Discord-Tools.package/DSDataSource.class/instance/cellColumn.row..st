accessing
cellColumn: column row: rowIndex
	| item cell |
	item := self elementAt: rowIndex.
	cell := FTIndentedCellMorph new.
	cell indentBy: item depth * 16.
	cell 
		addMorphBack: (self buttonFor: item);
		addMorphBack: (CheckboxMorph new
			on: item data
			selected: #isSelected
			changeSelected: #isSelected:;
			getLabelSelector: #itemName;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself).
	^ cell
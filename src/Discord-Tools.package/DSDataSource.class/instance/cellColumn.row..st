accessing
cellColumn: column row: rowIndex
	| item cell labelMorph |
	item := self elementAt: rowIndex.
	cell := FTIndentedCellMorph new.
	cell indentBy: item depth * 16.
	labelMorph := self table theme newRowIn: self for: {
		(self iconFor: item data) asMorph.
		item data itemName asStringMorph }.
	cell 
		addMorphBack: (self buttonFor: item);
		addMorphBack: (CheckboxMorph new
			on: item data
			selected: #isSelected
			changeSelected: #isSelected:;
			getLabelSelector: #itemName;
			labelMorph: labelMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself).
	^ cell
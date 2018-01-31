visiting
visitDSSendAttachmentsItem: aDSSendAttachmentsItem 
	| labelMorph checkbox rowMorph |
	labelMorph := 'Attachments' asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph }.
	checkbox := CheckboxMorph new
			on: aDSSendAttachmentsItem
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	^ checkbox
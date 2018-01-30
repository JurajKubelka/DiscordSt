visiting
visitDSSendPackagesAttachment: aDSSendPackagesAttachment 
	| labelMorph checkbox rowMorph |
	labelMorph := 'Source code' asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph }.
	checkbox := CheckboxMorph new
			on: aDSSendPackagesAttachment
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	^ checkbox
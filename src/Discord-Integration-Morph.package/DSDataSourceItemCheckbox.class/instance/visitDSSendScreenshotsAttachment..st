visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	| labelMorph checkbox rowMorph |
	labelMorph := 'Screenshots' asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph.
		self newAddWindowButtonFor: aDSSendScreenshotsAttachment }.
	checkbox := CheckboxMorph new
			on: aDSSendScreenshotsAttachment
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	checkbox labelClickable: false.
	^ checkbox
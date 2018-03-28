visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	| labelMorph checkbox rowMorph |
	aDSSendScreenshotsAttachment onChangedDo: [ :announcement | 
		self table dataSource updateData ].
	aDSSendScreenshotsAttachment onSelectionChangedDo: [ :announcement | 
		self toggleEnabledForAllChildren ].
	labelMorph := 'Screenshots' asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph.
		self newAddWindowButtonFor: aDSSendScreenshotsAttachment.
		self newAddGifButtonFor: aDSSendScreenshotsAttachment }.
	checkbox := CheckboxMorph new
			on: aDSSendScreenshotsAttachment
			selected: #isSelected
			changeSelected: #isSelected:;
			getEnabledSelector: #isEnabled;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	^ checkbox
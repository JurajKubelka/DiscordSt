visiting
visitDSSendScreenshotsAttachment: aDSSendScreenshotsAttachment 
	| rowMorph |
	rowMorph := self table theme newRowIn: self for: {
		'Screenshots' asMorph asReadOnlyMorph.
		self newAddWindowButtonFor: aDSSendScreenshotsAttachment.
		self newAddGifButtonFor: aDSSendScreenshotsAttachment }.
	^ self newCheckboxMorphFor: aDSSendScreenshotsAttachment labelMorph: rowMorph.
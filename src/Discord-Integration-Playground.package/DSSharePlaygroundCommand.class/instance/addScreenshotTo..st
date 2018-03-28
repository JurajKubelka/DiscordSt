private
addScreenshotTo: items
	| morph |
	morph := DSFindPlaygroundCommand new model: self playground; execute; morph.
	items addMorphScreenshotAttachment: morph.
	items screenshotsAttachment 
		isSelected: DSSharePlaygroundSettings wasScreenshotsSelected;
		onSelectionChangedDo: [ :announcement | 
			DSSharePlaygroundSettings wasScreenshotsSelected: announcement state ].
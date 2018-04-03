private
addMorphScreenshot: aMorph to: items
	items addMorphScreenshotAttachment: aMorph.
	items screenshotsAttachment 
		isSelected: self settingsClass wasScreenshotsSelected;
		onSelectionChangedDo: [ :announcement | 
			self settingsClass wasScreenshotsSelected: announcement state ].
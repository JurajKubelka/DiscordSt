adding
addScreenshotTo: items
	| morph |
	morph := DSFindPlaygroundCommand new model: self playground; execute; morph.
	self addMorphScreenshot: morph to: items.
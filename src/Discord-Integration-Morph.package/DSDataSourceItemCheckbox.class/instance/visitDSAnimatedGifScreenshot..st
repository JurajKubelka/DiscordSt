visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	| labelMorph rowMorph |
	labelMorph := StringMorph contents: aDSAnimatedGifScreenshot name.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph.
		self newRecordingButtonFor: aDSAnimatedGifScreenshot }.
	^ self newCheckboxMorphFor: aDSAnimatedGifScreenshot labelMorph: rowMorph.
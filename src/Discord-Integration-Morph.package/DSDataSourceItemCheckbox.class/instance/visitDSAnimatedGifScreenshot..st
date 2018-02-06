visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	| labelMorph rowMorph |
	labelMorph := aDSAnimatedGifScreenshot name asMorph asReadOnlyMorph.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph.
		self newStopRecordingButtonFor: aDSAnimatedGifScreenshot }.
	^ CheckboxMorph new
			on: aDSAnimatedGifScreenshot 
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
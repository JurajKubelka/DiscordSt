visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	| labelMorph rowMorph |
	labelMorph := StringMorph contents: aDSAnimatedGifScreenshot name.
	rowMorph := self table theme newRowIn: self for: {
		labelMorph.
		self newRecordingButtonFor: aDSAnimatedGifScreenshot }.
	^ CheckboxMorph new
			on: aDSAnimatedGifScreenshot 
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: rowMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
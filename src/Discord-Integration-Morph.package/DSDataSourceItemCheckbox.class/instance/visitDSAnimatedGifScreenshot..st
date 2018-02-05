visiting
visitDSAnimatedGifScreenshot: aDSAnimatedGifScreenshot 
	^ CheckboxMorph new
			on: aDSAnimatedGifScreenshot 
			selected: #isSelected
			changeSelected: #isSelected:;
			label: aDSAnimatedGifScreenshot name;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
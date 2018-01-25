instance creation
newCheckboxMorphOn: aDSScreenshot
	^ CheckboxMorph new
			on: aDSScreenshot 
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: (self newCheckboxLabelMorphOn: aDSScreenshot);
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
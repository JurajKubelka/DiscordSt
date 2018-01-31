visiting
visitDSMorphScreenshot: aDSMorphScreenshot 
	| labelMorph |
	labelMorph := (DSScreenshotCheckboxLabelMorph contents: aDSMorphScreenshot name)
			model: aDSMorphScreenshot;
			getTextSelector: #name;
			getFormSelector: #form;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	^ CheckboxMorph new
			on: aDSMorphScreenshot 
			selected: #isSelected
			changeSelected: #isSelected:;
			labelMorph: labelMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
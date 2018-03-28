visiting
visitDSMorphScreenshot: aDSMorphScreenshot 
	| labelMorph checkbox |
	labelMorph := (DSScreenshotCheckboxLabelMorph contents: aDSMorphScreenshot name)
			model: aDSMorphScreenshot;
			getTextSelector: #name;
			getFormSelector: #form;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	checkbox := CheckboxMorph new
			on: aDSMorphScreenshot 
			selected: #isSelected
			changeSelected: #isSelected:;
			getEnabledSelector: #isEnabled;
			labelMorph: labelMorph;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself.
	aDSMorphScreenshot onSelectionChangedDo: [ :announcement | 
		aDSMorphScreenshot changed: #isSelected. ].
	aDSMorphScreenshot onEnabledChangedDo: [ :announcement | 
		aDSMorphScreenshot changed: #isEnabled. ].
	^ checkbox
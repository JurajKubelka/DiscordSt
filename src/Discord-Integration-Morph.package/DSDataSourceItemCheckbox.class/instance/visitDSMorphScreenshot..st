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
	^ self newCheckboxMorphFor: aDSMorphScreenshot labelMorph: labelMorph.
instance creation
newCheckboxLabelMorphOn: aDSScreenshot
	^ (DSScreenshotCheckboxLabelMorph contents: aDSScreenshot name)
			model: aDSScreenshot;
			getTextSelector: #name;
			getFormSelector: #form;
			hResizing: #spaceFill; 
			vResizing: #shrinkWrap; 
			yourself
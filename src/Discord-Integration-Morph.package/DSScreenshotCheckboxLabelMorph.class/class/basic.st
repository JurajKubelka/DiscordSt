examples
basic
	<gtExample>
	<label: 'Basic usage'>
	| morph |
	morph := World submorphs atRandom.
	^ self new
		model: morph;
		getTextSelector: #printString;
		getFormSelector: #imageForm;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		yourself
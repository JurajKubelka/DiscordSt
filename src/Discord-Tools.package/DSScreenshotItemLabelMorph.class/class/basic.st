examples
basic
	<gtExample>
	<label: 'Basic usage'>
	| morph |
	morph := World submorphs atRandom.
	^ self new
		model: morph;
		getTextSelector: #printString;
		getMorphSelector: #yourself;
		hResizing: #spaceFill; 
		vResizing: #shrinkWrap; 
		yourself
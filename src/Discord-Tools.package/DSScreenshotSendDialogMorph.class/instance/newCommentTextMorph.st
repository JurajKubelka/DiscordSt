instance creation
newCommentTextMorph
	| morph |
	morph := RubScrolledTextMorph new
		model: self;
		beWrapped;
		beForPlainText;
		takeKeyboardFocus;
		hResizing: #spaceFill; 
		vResizing: #spaceFill;
		withAdornment;
		withLineNumbers;
		withColumns;
		withGhostText: 'Write a question or comment...';
		withAnnotation;
		autoAccept: true;
		yourself.
	morph ghostTextRuler fontName: 'Bitmap DejaVu Sans' pointSize: 18; centered.
	^ morph
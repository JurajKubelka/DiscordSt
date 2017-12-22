instance creation
newTextMorph
	| morph |
	morph := textModel newScrolledText
		beWrapped;
		beForPlainText;
		takeKeyboardFocus;
		minHeight: self theme listFont pixelSize * 3;
		hResizing: #spaceFill; 
		vResizing: #spaceFill;
		withGhostText: 'Write a question or comment...';
		autoAccept: true;
		yourself.
	^ morph
instance creation
newEmailFieldMorph
	^ emailModel newTextField
		takeKeyboardFocus;
		autoAccept: true;
		withGhostText: 'email@example.com';
		hResizing: #spaceFill;
		yourself.
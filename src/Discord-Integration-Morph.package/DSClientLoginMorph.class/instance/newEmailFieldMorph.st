instance creation
newEmailFieldMorph
	^ emailModel newTextField
		autoAccept: true;
		withGhostText: 'email@example.com';
		hResizing: #spaceFill;
		yourself.
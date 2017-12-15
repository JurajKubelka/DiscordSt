instance creation
newPasswordFieldMorph
	^ passwordModel newTextField
		autoAccept: true;
		withGhostText: 'secret password';
		hResizing: #spaceFill;
		yourself.
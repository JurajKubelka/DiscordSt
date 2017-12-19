instance creation
newPasswordFieldMorph
	^ passwordModel newTextField
		font: (StrikeFont passwordFontSize: self theme textFont pointSize);
		autoAccept: true;
		withGhostText: 'secret password';
		hResizing: #spaceFill;
		yourself.
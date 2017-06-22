specs
defaultSpec
	^ SpecColumnLayout composed 
		add: #toolbarModel height: self toolbarHeight;
		add: #listModel; 
		yourself
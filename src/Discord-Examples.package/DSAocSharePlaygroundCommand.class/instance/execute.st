execute
execute
	| classes packages |
	self morph: (DSFindPlaygroundCommand new model: self playground; execute; morph).
	self codeSnippet: (DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; codeSnippet).
	classes := (DSClassesInCodeSnippetCommand new codeSnippet: self codeSnippet; execute; classes).
	packages := (DSSortClassesPerPackageCommand new classes: classes; execute; packages).
	DSMessageSendMorphCommand new
		morph: self morph; 
		codeSnippet: self codeSnippet; 
		packages: packages;
		sendAction: [ :cmd | self send: cmd ];
		execute; 
		yourself.
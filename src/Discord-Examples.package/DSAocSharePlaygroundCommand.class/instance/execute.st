execute
execute
	| classes packages result |
	self morph: (DSFindPlaygroundCommand new model: self playground; execute; morph).
	self codeSnippet: (DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; codeSnippet).
	classes := (DSClassesInCodeSnippetCommand new codeSnippet: self codeSnippet; execute; classes).
	packages := (DSSortClassesPerPackageCommand new classes: classes; execute; packages).
	result := DSMessageSendMorphCommand new 
		morph: self morph; 
		codeSnippet: self codeSnippet; 
		packages: packages;
		sendAction: [ :cmd | self send ];
		execute; 
		yourself.
	"TODO: 
		Create a UI to write a message, selected packages, classes, and a screenshot.
		Serialize classes using Tonel.
		Post message to Discord."
	
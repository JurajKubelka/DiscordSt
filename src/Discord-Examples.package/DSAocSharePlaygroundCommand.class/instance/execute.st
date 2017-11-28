execute
execute
	self morph: (DSFindPlaygroundCommand new model: self playground; execute; morph).
	self codeSnippet: (DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; codeSnippet).
	"TODO: 
		Create a UI to write a message, selected packages, classes, and a screenshot.
		Serialize classes using Tonel.
		Post message to Discord."
	self halt.
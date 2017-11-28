as yet unclassified
execute
	self morph: (DSFindPlaygroundCommand new model: self playground; execute; morph).
	self codeSnippet: (DSExtractPlaygroundCodeSnippetCommand new playground: self playground; execute; codeSnippet).
	self halt.
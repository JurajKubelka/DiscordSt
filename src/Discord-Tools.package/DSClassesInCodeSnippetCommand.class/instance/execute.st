execute
execute
	self halt.
	Smalltalk compiler
		source: self codeSnippet;
		parse.
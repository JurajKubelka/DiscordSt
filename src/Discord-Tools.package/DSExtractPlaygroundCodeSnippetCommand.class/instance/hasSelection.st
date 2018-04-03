testing
hasSelection
	^ self selectionText notEmpty and: [ self selectionText size < self codeSnippet size ]
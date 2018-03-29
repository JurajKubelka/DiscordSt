execution
readParametersFromContext: aSourceCodeContext
	super readParametersFromContext: aSourceCodeContext.
	
	selectedTextInterval := aSourceCodeContext selectedTextInterval.
	selectedText := self method sourceCode 
			copyFrom: selectedTextInterval first 
			to: selectedTextInterval last.
	browserMorph := aSourceCodeContext browser window
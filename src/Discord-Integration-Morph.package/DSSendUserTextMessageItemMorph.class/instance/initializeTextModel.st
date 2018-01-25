initialization
initializeTextModel
	textModel := RubScrolledTextModel new.
	textModel announcer
		subscribe: RubTextUpdatedInModel 
		do: [ :ann | item text: textModel getString ].
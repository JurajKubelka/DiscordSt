initialization
initializeTextModel
	textModel := RubScrolledTextModel new.
	textModel announcer
		when: RubTextUpdatedInModel
		do: [ :ann | item text: textModel getString ]
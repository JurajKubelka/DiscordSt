instance creation
newAuthorNameElement
	| authorText authorElement |
	authorText := BrRopedText string: self message authorName.
	authorText attributes: {
		BrFontSizeAttribute size: 16.
		BrFontEmphasisAttribute oblique }.
	authorElement := BlTextElement new.
	authorElement text: authorText.
	authorElement constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent.
		c padding: (BlInsets right: 5) ].
	^ authorElement.
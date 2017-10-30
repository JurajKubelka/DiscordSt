updating
updateAuthorName
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
		c padding: (BlInsets all: 2) ];
		margin: (BlInsets all: 5).
	self containerElement addChild: authorElement.
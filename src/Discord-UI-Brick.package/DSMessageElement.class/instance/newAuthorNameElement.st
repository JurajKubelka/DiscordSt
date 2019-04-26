instance creation
newAuthorNameElement
	| authorText authorElement |
	authorText := self message authorName asRopedText.
	authorText fontSize: 16; oblique.
	authorElement := BlTextElement new.
	authorElement text: authorText.
	authorElement constraintsDo: [ :c |
		c horizontal fitContent.
		c vertical fitContent.
		c padding: (BlInsets right: 5) ].
	^ authorElement.
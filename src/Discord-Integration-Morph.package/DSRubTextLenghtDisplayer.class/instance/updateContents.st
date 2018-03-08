event handling
updateContents
	rowMorph ifNil: [ ^ self ].
	self textArea selectionStart ifNil: [ ^self ].
	self lines ifNil: [ ^self ].
	lineAnnotation
		beEditableWhile: [ lineAnnotation setTextWith: self textLenghtInfo.
			self layoutChanged ].
	rowMorph position: self innerBounds topLeft.
	rowMorph width: self innerBounds width
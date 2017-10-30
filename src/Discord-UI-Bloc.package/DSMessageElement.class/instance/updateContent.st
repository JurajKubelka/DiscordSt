updating
updateContent
	| editor editorElement text |
	self message content isEmptyOrNil ifTrue: [ ^self ].
	editorElement := BrEditorElement new.
	editorElement constraintsDo: [ :c | 
		c textFlow pushLine.
		c horizontal matchParent.
		c vertical fitContent ];
		background: Color white;
		margin: (BlInsets all: 5);
		border: (BlBorder paint: Color veryLightGray width: 1).
	editor := BrTextEditor new.
	text := BrRopedText string: self message content asString.
	editor text: text.
	editorElement editor: editor.
	self containerElement addChild: editorElement
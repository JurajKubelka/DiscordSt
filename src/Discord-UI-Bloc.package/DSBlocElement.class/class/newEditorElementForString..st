instance creation
newEditorElementForString: aString
	| editor editorElement text |
	text := BrRopedText string: aString.
	editor := BrTextEditor new.
	editor text: text.
	editorElement := BrEditorElement new.
	editorElement constraintsDo: [ :c | 
		c textFlow pushLine.
		c horizontal matchParent.
		c vertical fitContent ];
		background: Color white;
		margin: (BlInsets all: 5);
		border: (BlBorder paint: Color veryLightGray width: 1).
	editorElement editor: editor.
	^ editorElement
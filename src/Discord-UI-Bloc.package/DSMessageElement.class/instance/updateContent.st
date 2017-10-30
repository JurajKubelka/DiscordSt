updating
updateContent
	| editor editorElement text |
	editorElement := BrEditorElement new.
	editorElement constraintsDo: [ :c | 
		c horizontal fitContent.
		c vertical fitContent ].
	editor := BrTextEditor new.
	text := BrRopedText string: self message content.
	editor text: text.
	editorElement editor: editor.
	self messageContainer addChild: editorElement
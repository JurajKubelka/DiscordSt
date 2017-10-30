as yet unclassified
updateChildren
	| editorElement editor text |
	self embed description ifNil: [ ^ self ].
	editorElement := BrEditorElement new.
	editorElement constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	
	editor := BrTextEditor new.
	text := BrRopedText string: self embed description.
	
	editor text: text.
	editorElement editor: editor.
	self addChild: editorElement.
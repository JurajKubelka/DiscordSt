execute
execute
	| aValue |
	self codeSnippet: self playground entity content.
	aValue := (self playground pane port: #selectionInterval) value.
	aValue := aValue ifNil: [ 0 to: 0 ].
	self selectionInterval: aValue.
	aValue := (self playground pane port: #selectedText) value.
	aValue := aValue ifNil: [ '' ].
	self selectionText: aValue asString.
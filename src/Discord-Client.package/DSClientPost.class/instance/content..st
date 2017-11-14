accessing
content: aString
	"Set the message contents (up to 2000 characters)"
	| newValue |
	newValue := aString asString.
	newValue size > DSConstants maxMessageLenght 
		ifTrue: [ DSLongMessageError new
			content: newValue;
			signal: 'Content ', newValue size asString, 
				' long, max. is ', DSConstants maxMessageLenght asString ].
	content := newValue
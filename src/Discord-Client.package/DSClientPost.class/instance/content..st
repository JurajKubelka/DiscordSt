accessing
content: anObject
	"Set the message contents (up to 2000 characters)"
	| newValue |
	newValue := anObject asString.
	newValue size > DSConstants maxMessageLenght 
		ifTrue: [ DSLongMessageError new
			content: newValue;
			signal: 'Content ', newValue size asString, 
				' long, max. is ', DSConstants maxMessageLenght asString ].
	^ self fieldsAt: 'content' put: newValue
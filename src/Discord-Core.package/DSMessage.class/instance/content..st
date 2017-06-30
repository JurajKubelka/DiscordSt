accessing
content: string
	"Set the contents of the message."
	string size > DSConstants maxMessageLenght 
		ifTrue: [ DSLongMessageError new
			content: string;
			signal: 'Message ', string size asString, ' long, max. is ', DSConstants maxMessageLenght asString ].
	^ self fieldsAt: 'content' put: string
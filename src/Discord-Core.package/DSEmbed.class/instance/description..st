accessing
description: aString 
	aString size > DSConstants maxMessageLenght 
		ifTrue: [ DSLongMessageError new
			content: aString;
			signal: 'Message ', aString size asString, ' long, max. is ', DSConstants maxMessageLenght asString ].
	^ self fieldsAt: 'description' put: aString
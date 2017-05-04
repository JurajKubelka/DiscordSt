accessing
type: string
	"Set the type of the channel, text or voice."
	string = 'text'
		ifFalse: [ DSIncorrectValuesError 
			signal: 'Channel type has to by "text", no "', string asString, '".' ].
	^ self fieldsAt: 'type' put: string
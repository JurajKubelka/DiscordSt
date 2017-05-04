accessing
type: string
	"Set the type of the channel, text or voice."
	string = 'voice'
		ifFalse: [ DSIncorrectValuesError 
			signal: 'Channel type has to by "voice", no "', string asString, '".' ].
	^ self fieldsAt: 'type' put: string
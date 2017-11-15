accessing
delegate: aDelegate
	"Set delegate object that can be configured using to:map: message.
	See start method."
	delegate ifNil: [ self error: 'This message should be sent after #start message' ].
	delegate := aDelegate.
	server delegate: aDelegate.
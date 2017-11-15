options
setDebugMode
	self port isNil ifTrue: [ 
		self error: 'This message should be sent after #start message' ].
	server debugMode: true.
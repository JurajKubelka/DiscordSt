protocol - sending
respondTo: aDSMessage 
	<return: #DSMessage or: nil>
	self post isEmpty ifTrue: [ DSIncorrectValuesError signal: 'Cannot send an empty message' ].
	^ [ self restApi
			sendMessage: post
			answering: aDSMessage
			signalProgress: self signalProgress ]
		ensure: [ post := nil ].
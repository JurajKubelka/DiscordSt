accessing - convenience
messages
	<return: #DSMessages of: #DSMessage>
	^ messages ifNil: [ self restApi messagesForChannel: self ]
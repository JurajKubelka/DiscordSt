public
queryMessagesAfter: aDSMessage 
	"Return messages that are newer then the given message."
	<return: #DSMessages of: #DSMessage>
	^ self restApi messagesAfter: aDSMessage inChannel: self
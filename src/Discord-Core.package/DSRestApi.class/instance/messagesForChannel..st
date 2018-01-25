public - channel
messagesForChannel: aChannel
	"Return a collection of messages for a given channel"
	<return: #DSMessages of: #DSMessage>
	^ self subclassResponsibility
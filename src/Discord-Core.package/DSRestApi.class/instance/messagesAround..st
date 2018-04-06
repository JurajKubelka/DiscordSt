public - channel
messagesAround: aDSMessage
	"Return a collection of messages that are around then the given message."
	<return: #DSMessages of: #DSMessage>
	^ self subclassResponsibility
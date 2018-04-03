public - channel
messagesAfter: aDSMessage inChannel: aDSGuildTextChannel 
	"Return a collection of messages for a given channel 
	that are newwer then the given message."
	<return: #DSMessages of: #DSMessage>
	^ self subclassResponsibility
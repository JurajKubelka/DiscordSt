public - channel
messagesBefore: aDSMessage inChannel: aDSGuildTextChannel 
	"Return a collection of messages for a given channel 
	that are older then the given message."
	<return: #DSMessages of: #DSMessage>
	^ self subclassResponsibility
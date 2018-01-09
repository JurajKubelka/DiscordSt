public - channel
olderMessagesForChannel: aChannel
	"Return a collection of messages for a given channel 
	that are older then the oldest message the channel holds.
	If there are no current messages, it returns the recent messages."
	<return: #DSMessages of: #DSMessage>
	^ self subclassResponsibility
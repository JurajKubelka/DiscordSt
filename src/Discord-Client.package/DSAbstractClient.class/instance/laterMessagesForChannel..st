public - channel
laterMessagesForChannel: aChannel
	"Return a collection of messages for a given channel 
	that are newer then a newest message kept by the channel.
	If there are no current messages, it returns the recent messages."
	<return: #DSMessages of: #DSMessage>
	^ self restApi laterMessagesForChannel: aChannel
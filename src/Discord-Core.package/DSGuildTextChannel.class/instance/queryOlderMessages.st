public
queryOlderMessages
	"Return messages that are older then the oldest one, kept by the channel."
	<return: #DSMessages of: #DSMessage>
	^ self restApi olderMessagesForChannel: self
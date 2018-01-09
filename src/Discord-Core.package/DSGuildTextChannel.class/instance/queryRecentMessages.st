public
queryRecentMessages
	"Return recent (newest) messages."
	<return: #DSMessages of: #DSMessage>
	^ self restApi messagesInChannel: self
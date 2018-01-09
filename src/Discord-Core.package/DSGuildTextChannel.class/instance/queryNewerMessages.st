public
queryNewerMessages
	"Return recent messages."
	<return: #DSMessages of: #DSMessage>
	^ self restApi messagesInChannel: self
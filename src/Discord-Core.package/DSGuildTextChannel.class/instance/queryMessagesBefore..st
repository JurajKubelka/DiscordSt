public
queryMessagesBefore: aDSMessage 
	"Return messages that are older then the given message."
	<return: #DSMessages of: #DSMessage>
	^ self restApi messagesBefore: aDSMessage inChannel: self
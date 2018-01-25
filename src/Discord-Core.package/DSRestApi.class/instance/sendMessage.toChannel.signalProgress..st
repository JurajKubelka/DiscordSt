public - channel
sendMessage: aDSClientJsonPost toChannel: aDSChannel signalProgress: aBoolean
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	<return: #DSMessage>
	^ self subclassResponsibility
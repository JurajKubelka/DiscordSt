public - channel
sendMessage: aDSClientPost answering: aDSMessage signalProgress: aBoolean
	"Send a message to the same text Guild or DM channel as given aDSMessage.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	<return: #DSMessage>
	^ self subclassResponsibility
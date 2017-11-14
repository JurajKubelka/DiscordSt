public
sendJsonMessage: aDSClientJsonPost toGuildTextOrDMChannel: aDSChannel
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	self subclassResponsibility
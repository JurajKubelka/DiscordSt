public
sendJsonMessage: aDSClientJsonPost toGuildTextOrDMChannel: aDSGuildTextChannel 
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	^ self sendJsonMessage: aDSClientJsonPost toGuildTextOrDMChannelId: aDSGuildTextChannel id
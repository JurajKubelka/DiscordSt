visiting
visitDSClientJsonPost: aDSClientJsonPost
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"

	^ self client restApi
		sendJsonMessage: post
		toGuildTextOrDMChannelId: self channel id
		signalProgress: self signalProgress
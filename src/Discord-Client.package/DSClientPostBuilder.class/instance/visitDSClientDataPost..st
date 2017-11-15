visiting
visitDSClientDataPost: aDSClientDataPost
	"Send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#create-message"

	^ self client restApi
		sendDataMessage: post
		toGuildTextOrDMChannelId: self channel id
		signalProgress: self signalProgress
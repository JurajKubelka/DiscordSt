defaults - url
channelMessagesForId: channelIdString 
	"Get a URL to get messages of an existing channel, or
	send a message to the particular text Guild or DM channel.
	See https://discordapp.com/developers/docs/resources/channel#get-channel-messages
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	^ self channelsUrl / channelIdString asString / 'messages'
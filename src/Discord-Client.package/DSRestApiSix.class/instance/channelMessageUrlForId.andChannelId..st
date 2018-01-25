defaults - url
channelMessageUrlForId: messageId andChannelId: channelIdString 
	"Get a URL to return a specific message in the channel. 
	If operating on a guild channel, this endpoints requires the 'READ_MESSAGE_HISTORY' 
	permission to be present on the current user. Returns a message object on success.
	See https://discordapp.com/developers/docs/resources/channel#get-channel-message"
	^ (self channelMessagesUrlForId: channelIdString) / messageId asString
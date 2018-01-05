public
editMessage: aDSMessage content: aString embed: aDSEmbed 
	"Edit a previously sent message. 
	You can only edit messages that have been sent by the current user. 
	Returns a message object. Fires a Message Update Gateway event.
	See https://discordapp.com/developers/docs/resources/channel#edit-message"
	^ self 
		editMessageId: aDSMessage id 
		inChannelId: aDSMessage channelId 
		content: aString 
		embed: aDSEmbed
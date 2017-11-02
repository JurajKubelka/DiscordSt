json - conversions
editMessagePayloadForContent: contentString embed: aDSEmbed 
	"Return a JSON string that represents Edit Message payload.
	See https://discordapp.com/developers/docs/resources/channel#edit-message"
	^ (Dictionary new
		at: 'content' put: contentString;
		at: 'embed' put: aDSEmbed;
		yourself) asDiscordJSONString 
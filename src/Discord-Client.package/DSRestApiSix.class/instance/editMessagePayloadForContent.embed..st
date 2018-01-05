json - conversions
editMessagePayloadForContent: contentString embed: aDSEmbed 
	"Return a JSON string that represents Edit Message payload.
	See https://discordapp.com/developers/docs/resources/channel#edit-message"
	| dictionary |
	dictionary := NeoJSONObject new
		at: 'content' put: contentString;
		at: 'embed' put: aDSEmbed;
		yourself.
	^ DSModelJsonMapping write: dictionary mappedTo: #editMessagePayloadMappingFor:
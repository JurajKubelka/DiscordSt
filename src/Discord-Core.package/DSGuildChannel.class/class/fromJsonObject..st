instance creation
fromJsonObject: jsonObject 
	"Return an instance from a JSON object.
	Resolve if it is a Voice or Text Channel.
	See https://discordapp.com/developers/docs/resources/channel#guild-channel-object
	jsonObject is a Dictionary."
	^ self fromJsonObject: jsonObject api: nil.
protocol
message
	"Return a builder to compose a user message.
	For the message structure, see https://discordapp.com/developers/docs/resources/channel#create-message"
	^ self restApi messageBuilder
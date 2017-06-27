accessing
client
	"Return a Discord client that is used for sending messages"
	^ client ifNil: [ client := DSClient default ]
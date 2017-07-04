protocol - sending
send
	"Send a message to the particular text Guild or DM channel.
	It returns the sent message.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	<return: #DSMessage or: nil>
	| result |
	post ifNil: [ DSIncorrectValuesError signal: 'Cannot send an empty message' ].
	[ result := post accept: self ]
		ensure: [ post := nil ].
	^ result.
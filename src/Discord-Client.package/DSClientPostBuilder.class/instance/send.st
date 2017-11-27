protocol - sending
send
	"Send a message to the particular text Guild or DM channel.
	It returns the sent message.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	<return: #DSMessage or: nil>
	self post isEmpty ifTrue: [ DSIncorrectValuesError signal: 'Cannot send an empty message' ].
	^ [ self client restApi
			sendMessage: post
			toGuildTextOrDMChannelId: self channel id
			signalProgress: self signalProgress ]
		ensure: [ post := nil ].
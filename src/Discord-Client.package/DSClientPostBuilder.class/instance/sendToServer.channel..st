protocol - sending
sendToServer: serverName channel: channelName 
	"Send a message to the particular text Guild or DM channel of the given channelName.
	The channel is part of a server of the given name.
	It returns the sent message. 
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	^ self sendTo: [ :servers | (servers named: serverName) channelNamed: channelName ]
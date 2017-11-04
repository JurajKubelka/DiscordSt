accessing
typeNumber
	"Return an integer that represents the channel type.
	See https://discordapp.com/developers/docs/resources/channel#channel-object-channel-types"
	<return: #Integer>
	^ self subclassResponsibility
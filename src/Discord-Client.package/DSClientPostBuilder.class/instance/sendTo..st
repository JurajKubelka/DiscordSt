protocol - sending
sendTo: aDSGuildTextChannelOrOneArgBlock
	"Send a message to the particular text Guild or DM channel.
	If the parameter is a block, then the block expects collection of servers.
	The block should return a aDSGuildTextChannel.
	It returns the sent message.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	<return: #DSMessage or: nil>
	aDSGuildTextChannelOrOneArgBlock isClosure 
		ifTrue: [ self channel: (aDSGuildTextChannelOrOneArgBlock value: self meGuilds) ]
		ifFalse: [ self channel: aDSGuildTextChannelOrOneArgBlock ].
	^ self send
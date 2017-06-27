protocol
sendTo: aDSGuildTextChannelOrOneArgBlock
	"Send a message to the particular text Guild or DM channel.
	If the parameter is a block, then the block expects collection of servers.
	The block should return a aDSGuildTextChannel.
	It returns the sent message.
	See https://discordapp.com/developers/docs/resources/channel#create-message"
	| result |
	aDSGuildTextChannelOrOneArgBlock isClosure 
		ifTrue: [ self channel: (aDSGuildTextChannelOrOneArgBlock value: self servers) ]
		ifFalse: [ self channel: aDSGuildTextChannelOrOneArgBlock ].
	[ result := self post accept: self ]
		ensure: [ post := nil ].
	^ result.
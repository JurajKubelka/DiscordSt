instance creation
fromJsonObject: jsonObject 
	"Return an instance from a JSON object.
	Resolve if it is a Voice or Text Channel.
	See https://discordapp.com/developers/docs/resources/channel#guild-channel-object
	jsonObject is a Dictionary."
	(jsonObject at: 'type') = 'text'
		ifTrue: [ ^ DSGuildTextChannel new initializeUsingJsonObject: jsonObject; 
		yourself ].
	(jsonObject at: 'type') = 0
		ifTrue: [ ^ DSGuildTextChannel new initializeUsingJsonObject: jsonObject; 
		yourself ].
	(jsonObject at: 'type') = 'voice'
		ifTrue: [ ^ DSGuildVoiceChannel new initializeUsingJsonObject: jsonObject; 
		yourself ].
	(jsonObject at: 'type') = 2
		ifTrue: [ ^ DSGuildVoiceChannel new initializeUsingJsonObject: jsonObject; 
		yourself ].
	"The Discord API defines only text and voice."
	^ self shouldNotImplement 
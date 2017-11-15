instance creation
newFromNumber: anInteger
	"Return a corresponding instance,
	see https://discordapp.com/developers/docs/resources/channel#channel-object-channel-types"

	| aClass |
	aClass := self allChannelTypes
		detect: [ :eachClass | eachClass typeNumber = anInteger ].
	^ aClass uniqueInstance
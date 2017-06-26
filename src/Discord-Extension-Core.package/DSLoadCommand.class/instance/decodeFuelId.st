initialization
decodeFuelId
	"Fuel id is composed of:
		guildId-channelId-customId-dateAndTime, or
		guildId-customId-dateAndTime in case of a general channel that have the same id as guild."
	| collection |
	collection := $- split: self fuelId.
	guildId := (Number readFrom: collection first base: 36) asString.
	channelId := collection size = 3 
		ifTrue: [ guildId ]
		ifFalse: [ (Number readFrom: collection second base: 36) asString ].
	dateAndTime := DateAndTime fromUnixTime: (Number readFrom: collection last base: 36).
	
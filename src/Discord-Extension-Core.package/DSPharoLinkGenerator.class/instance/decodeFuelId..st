protocol
decodeFuelId: aString 
	"Return FuelId composed of:
		- guild id where a user message was sent
		- channel id where a user message was sent
		- message id, a random number that identifies a message in a FUEL field
		- DateAndTime object as a string
		- channel id where messages with serialized data where sent (it may be the same as channel id)
		- message ids that includes the serialized data as attachments"
	| parts fuelIdObject |
	parts := self class fuelIdSeparator split: aString.
	fuelIdObject := DSFuelId new.
	fuelIdObject messageId: aString.
	fuelIdObject guildId: (self decodeNumber: parts first) asString.
	fuelIdObject channelId: (self decodeNumber: parts second) asString.
	fuelIdObject dateAndTime: (self decodeDateAndTime: parts fourth).
	fuelIdObject messageChannelId: (self decodeNumber: parts fifth) asString.
	fuelIdObject messageIds: (Array streamContents: [ :aStream |
		6 to: parts size do: [ :index | 
			aStream nextPut: (self decodeNumber: (parts at: index)) asString ]]).
	^ fuelIdObject
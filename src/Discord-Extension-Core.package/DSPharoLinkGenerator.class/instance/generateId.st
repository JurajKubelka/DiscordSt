private
generateId
	"Return self-generated message id.
	It is used for the message identification while downloading data to a Pharo image, using a script.
	The last part (after '-' character) includes DateAndTime that can be decoded using:
	DateAndTime fromUnixTime: (Number readFrom: '<the second part>' base: 36)"
	^ String streamContents: [ :aStream |
		"Guild id"
		self encodeNumber: self channel guildId asNumber stream: aStream.
		aStream nextPut: self class fuelIdSeparator.
		"Channel id"
		self encodeNumber: self channel id asNumber stream: aStream.
		aStream nextPut: self class fuelIdSeparator.
		"Random message id"
		self encodeNumber: ((10 raisedTo: 9) atRandom * Time primUTCSecondsClock) stream: aStream.
		aStream nextPut: self class fuelIdSeparator.
		"Date and time"
		self encodeDateAndTime: DateAndTime now stream: aStream.
		aStream nextPut: self class fuelIdSeparator.
		"Messages with a binary data can be sent to a different channel."
		self encodeNumber: self previousMessages anyOne channelId asNumber stream: aStream.
		aStream nextPut: self class fuelIdSeparator.
		"Message Ids - messages that includes other parts of a serialized data"
		self previousMessages 
			do: [ :eachMessage | self encodeNumber: eachMessage id asNumber stream: aStream ]
			separatedBy: [ aStream nextPut: self class fuelIdSeparator ] ].
private
customMessageIdFrom: aDSGuildTextChannel 
	"Return self-generated message id.
	It is used for the message identification while downloading data 
	to a Pharo image, using a script.
	The last part (after '-' character) includes DateAndTime that can be decoded using:
	DateAndTime fromUnixTime: (Number readFrom: '<the second part>' base: 36)"
	^ String streamContents: [ :aStream |
		aDSGuildTextChannel guildId asNumber printOn: aStream base: 36.
		aStream nextPut: $-.
		aDSGuildTextChannel isGeneral ifFalse: [ 
			aDSGuildTextChannel id asNumber printOn: aStream base: 36.
			aStream nextPut: $- ].
		((10 raisedTo: 9) atRandom * Time primUTCSecondsClock) printOn: aStream base: 36.
		aStream nextPut: $-.
		DateAndTime now asUnixTime printOn: aStream base: 36 ].
private
decodeDateAndTime: aString 
	"Return decoded DateAndTime object."
	^ (DateAndTime fromUnixTime: (self decodeNumber: aString)) asUTC
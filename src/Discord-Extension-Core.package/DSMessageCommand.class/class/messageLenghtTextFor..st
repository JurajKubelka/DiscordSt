utility
messageLenghtTextFor: aString 
	"Return a message lenght description."
	^ aString size asString, ' out of ', 
		DSConstants maxMessageLenght asString, ' chars'
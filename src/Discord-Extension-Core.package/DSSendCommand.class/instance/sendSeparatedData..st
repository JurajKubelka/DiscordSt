private - sending
sendSeparatedData: bytes 
	"Split byte array to several files, each max. 8MB big."
	| byteStream part index messages |
	byteStream := bytes readStream.
	index := 1.
	messages := OrderedCollection new.
	[ 
		"Send FUEL data in separate messages."
		part := byteStream next: DSConstants discordAttachmentLimit.
		messages add: (self sendPart: part index: index).
		index := index + 1.
		byteStream atEnd.
	] whileFalse.
	"Send the main message with user information."
	self sendMainMessage: messages
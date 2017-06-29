private
splitSerializedData: bytes 
	"Split byte array to several files, each max. 8MB big."
	| byteStream part index |
	byteStream := bytes readStream.
	index := 1.
	[ 
		part := byteStream next: DSUtility discordAttachmentLimit.
		part ifNotEmpty: [ self client fileName: 'Part-', index printString, '-', self fileName bytes: part ].
		index := index + 1.
		part notEmpty.
	] whileTrue.
	
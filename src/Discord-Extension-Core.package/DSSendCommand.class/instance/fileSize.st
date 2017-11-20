accessing - computed
fileSize
	"Get a file size for a Discord message attachment (this attachment will hold a serialized data).
	The value is the file size in bytes."
	^ (self serializedData ifNotNil: #size ifNil: 0)
		+ (self screenshot ifNotNil: [ :aForm | aForm bitsSize ] ifNil: 0)
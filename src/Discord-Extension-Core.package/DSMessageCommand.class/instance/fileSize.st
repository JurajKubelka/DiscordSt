accessing
fileSize
	"Get a file size for a Discord message attachment (this attachment will hold a serialized data).
	the value is the file size in bytes."
	^ fileSize ifNil: [ 0 ]
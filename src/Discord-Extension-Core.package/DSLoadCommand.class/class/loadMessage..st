protocol
loadMessage: aDSMessage
	"Extract message ids and data information from a message,
	then download and materialize it, see #loadId:data:"
	| info |
	info := DSExtractLoadInfoCommand new
		message: aDSMessage;
		execute.
	^ self loadId: info loadId data: info data
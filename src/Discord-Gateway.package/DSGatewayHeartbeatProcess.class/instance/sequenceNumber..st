accessing
sequenceNumber: anInteger
	"Set sequence number (as event data) for the next payload."
	mutex critical: [ heartbeatPayload eventData: anInteger ]
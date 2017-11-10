accessing
sequenceNumber
	"Return a sequence number (a part of the payload event data) for the next payload."
	^ mutex critical: [ heartbeatPayload eventData ]
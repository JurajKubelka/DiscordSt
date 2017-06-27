testing
hasSessionIdAndSequenceNumber
	"Return true if the API object has the session id and the sequence number.
	Useful for testing if OP 2 Identify or OP 6 Resume payload should be sent."
	^ self sessionId notNil and: [ self sequenceNumber notNil ]
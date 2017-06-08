accessing
sequenceNumber
	"Get sequence number, used for resuming sessions and heartbeats.
	This number is received after each OP 0 Dispatch operation.
	The first OP 0 Dispatch is Ready Event. 
	Only for OP 0"
	^ sequenceNumber
mock
sequenceNumber: anInteger 
	"Set a sequence number, used for resuming sessions and heartbeats."
	self serverRequests 
		add: #sequenceNumber;
		add: anInteger
instance creation
newHeartbeat: sequence
	"Create new Heartbeat object with a given sequence number"
	^ self newHeartbeat
		eventData: sequence;
		yourself
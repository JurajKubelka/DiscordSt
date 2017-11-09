accessing
sequence: integer
	"Set sequence number, used for resuming sessions and heartbeats.
	Only for OP 0"
	self fieldsAt: #s put: integer
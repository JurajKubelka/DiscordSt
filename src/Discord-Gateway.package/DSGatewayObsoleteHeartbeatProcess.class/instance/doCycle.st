private
doCycle
	"Start Heartbeat process. 
	It first delay the activity for hearbeat interval period, 
	then do send the heartbeat code and receives the heartbeat ACK code."
	delay := self heartbeatInterval milliSeconds asDelay.
	delay wait.
	delay := nil.
	self canDoNextCycle ifTrue: [ self sendHeartbeat ]
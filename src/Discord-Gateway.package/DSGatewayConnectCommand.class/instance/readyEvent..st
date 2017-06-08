private - commands
readyEvent: json
	"Parse Ready Event and store important information." 
	| readyMessage |
	self sequenceNumber: (json at: 's').
	readyMessage := json at: 'd'.
	self sessionId: (readyMessage at: 'session_id').
	"self readyMessage: json."
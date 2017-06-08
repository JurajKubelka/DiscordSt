private
readyEvent: json
	"Parse Ready Event and store important information." 
	| readyMessage |
	self api sequenceNumber: (json at: 's').
	readyMessage := json at: 'd'.
	self api sessionId: (readyMessage at: 'session_id').
	self api readyMessage: json.
accessing - messages
resumeData
	"OP 6 Resume data.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-resume"
	^ Dictionary new 
		at: #token put: self token;
		at: #session_id put: self sessionId;
		at: #seq put: self sequenceNumber;
		yourself
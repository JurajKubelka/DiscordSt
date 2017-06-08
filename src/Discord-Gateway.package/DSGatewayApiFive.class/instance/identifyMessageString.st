accessing - messages
identifyMessageString
	"Create the OP 2 Identify message as a JSON string.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-identify"
	| message |
	message := Dictionary new
		at: 'op' put: 2;
		at: 't' put: nil;
		at: 's' put: nil;
		at: 'd' put: (Dictionary new 
			at: #token put: self token;
			at: #properties put: (Dictionary new
				at: '$os' put: Smalltalk os family;
				at: '$browser' put: DSApi userAgent;
				at: '$device' put: DSApi userAgent;
				at: '$referrer' put: '';
				at: '$referring_domain' put: '';
				yourself);
			at: #compress put: false;
			at: 'large_threshold' put: 250;
			yourself).
	^ self toJsonString: message.
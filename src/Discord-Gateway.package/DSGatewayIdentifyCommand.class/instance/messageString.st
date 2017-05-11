accessing
messageString
	"Create the OP 2 Identify message as a JSON string.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-identify"
	| message |
	message := Dictionary new 
		at: #token put: self api token;
		at: #properties put: (Dictionary new
			at: '$os' put: Smalltalk os family;
			at: '$browser' put: DSApi userAgent;
			at: '$device' put: DSApi userAgent;
			at: '$referrer' put: '';
			at: '$referring_domain' put: '';
			yourself);
		at: #compress put: false;
		at: 'large_threshold' put: 250;
		yourself.
	^ self api toJsonString: message.
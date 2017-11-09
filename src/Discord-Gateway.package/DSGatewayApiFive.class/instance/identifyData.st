accessing - messages
identifyData
	"OP 2 Identify data.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-identify"
	^ Dictionary new 
			at: #token put: self token;
			at: #properties put: (Dictionary new
				at: '$os' put: DSConstants osFamily;
				at: '$browser' put: DSConstants userAgent;
				at: '$device' put: DSConstants deviceVersion;
				at: '$referrer' put: '';
				at: '$referring_domain' put: '';
				yourself);
			at: #compress put: false;
			at: 'large_threshold' put: 250;
			yourself
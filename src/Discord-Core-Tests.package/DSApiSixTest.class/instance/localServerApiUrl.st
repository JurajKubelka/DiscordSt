defaults
localServerApiUrl
	"Return URL object pointing to Fake Discord test server."
	self assert: port notNil description: 'This message should be sent after #startZnServer message'.
	^ ZnUrl new 
		scheme: #http;
		host: NetNameResolver loopBackName;
		port: port;
		addPathSegment: 'api';
		yourself
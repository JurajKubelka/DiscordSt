accessing
gatewayUrl
	"Return URL object pointing to a Fake Gateway Discord test server."
	self port isNil ifTrue: [ 
		self error: 'This message should be sent after #start message' ].
	^ ZnUrl new 
		scheme: #ws;
		host: NetNameResolver loopBackName;
		port: port;
		addPathSegment: 'gateway';
		yourself
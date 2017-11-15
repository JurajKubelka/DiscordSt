accessing
apiUrl
	"Return URL object pointing to a Fake Discord test server."
	self port isNil ifTrue: [ 
		self error: 'This message should be sent after #start message' ].
	^ ZnUrl new 
		scheme: #http;
		host: NetNameResolver loopBackName;
		port: port;
		addPathSegment: 'api';
		yourself
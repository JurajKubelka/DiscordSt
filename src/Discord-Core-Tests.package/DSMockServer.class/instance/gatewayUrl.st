accessing
gatewayUrl
	"Return an URL object pointing to a Fake Discord Gateway server."
	self port isNil ifTrue: [ 
		self error: 'This message should be sent after #start message' ].
	^ ZnUrl new 
		scheme: #ws;
		host: NetNameResolver loopBackName;
		port: port;
		yourself

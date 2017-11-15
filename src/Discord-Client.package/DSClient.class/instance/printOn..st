printing
printOn: aStream
	super printOn: aStream.
	self email notNil
		ifTrue: [ aStream << ': ' << self email ].
	self isAuthenticated 
		ifTrue: [ aStream << ' (authenticated)' ]
		ifFalse: [ aStream << ' (unauthenticated)' ].
	self isConnected 
		ifTrue: [ aStream << ' (connected)' ]
		ifFalse: [ aStream << ' (disconnected)' ].
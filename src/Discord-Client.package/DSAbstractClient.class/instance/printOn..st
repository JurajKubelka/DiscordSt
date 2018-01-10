printing
printOn: aStream
	super printOn: aStream.
	(self me notNil and: [ self me username notNil ])
		ifTrue: [ aStream << ': ' << self me name ].
	self isConnected 
		ifTrue: [ aStream << ' (connected)' ]
		ifFalse: [ 
			self isAuthenticated 
				ifTrue: [ aStream << ' (disconnected)' ]
				ifFalse: [ aStream << ' (unauthenticated)' ] ].
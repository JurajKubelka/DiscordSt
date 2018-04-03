printing
printOn: aStream
	self isAuthenticated 
		ifFalse: [ aStream << 'Session: unauthenticated'.
			self email ifNotNil: [ :string |
				aStream << ' user ' << string ] ]
		ifTrue: [ aStream << 'Session: authenticated'.
			self email ifNotNil: [ :string |
				aStream << ' as ' << string ] ].
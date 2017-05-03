printing
printOn: aStream
	self token 
		ifNil: [ aStream << 'Session: unauthenticated'.
			self email ifNotNil: [ :string |
				aStream << ' user ' << string ] ]
		ifNotNil: [ aStream << 'Session: authenticated'.
			self email ifNotNil: [ :string |
				aStream << ' as ' << string ] ].
printing
printOn: aStream
	aStream << 'User: '.
	self username 
		ifNotNil: [ :string | aStream << string ]
		ifNil: [ aStream << '<nameless>' ].
	self isBot
		ifTrue: [ aStream << ' (bot)' ].
	
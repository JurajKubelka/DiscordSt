printing
printOn: aStream
	"Print server name if available"
	aStream << 'User Guild: '.
	self name 
		ifNotNil: [ :string | aStream << string asString ]
		ifNil: [ aStream << '<nameless>' ].
	self isOwner
		ifTrue: [ aStream << ' (owner)' ].
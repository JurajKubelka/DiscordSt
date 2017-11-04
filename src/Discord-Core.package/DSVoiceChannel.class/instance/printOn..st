printing
printOn: aStream
	"Print channel name if available"
	aStream << 'Voice Channel: '.
	self name 
		ifNotNil: [ :string | aStream << string asString ]
		ifNil: [ aStream << '<nameless>' ].
	
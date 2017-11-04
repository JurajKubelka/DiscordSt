printing
printOn: aStream
	"Print channel name if available"
	aStream << 'Text Channel: '.
	self name 
		ifNotNil: [ :string | aStream << string asString ]
		ifNil: [ aStream << '<nameless>' ].
	
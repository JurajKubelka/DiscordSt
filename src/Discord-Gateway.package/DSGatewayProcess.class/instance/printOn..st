printing
printOn: aStream
	super printOn: aStream.
	self isActive
		ifTrue: [ aStream << ' (active)' ]
		ifFalse: [ aStream << ' (inactive)' ]
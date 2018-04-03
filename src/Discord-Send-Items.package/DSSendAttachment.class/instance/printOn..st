printing
printOn: aStream
	super printOn: aStream.
	self isSelected 
		ifTrue: [ aStream << ' (selected, ' ]
		ifFalse: [ aStream << ' (deselected, ' ].
	self isEnabled 
		ifTrue: [ aStream << 'enabled)' ]
		ifFalse: [ aStream << 'disabled)' ].
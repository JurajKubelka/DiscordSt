printing
printOn: aStream
	self item ifNil: [ ^ super printOn: aStream ].
	aStream << self item name << ' ('.
	self isSelected 
		ifTrue: [ aStream << 'selected, ' ]
		ifFalse: [ aStream << 'deselected, ' ].
	self isEnabled 
		ifTrue: [ aStream << 'enabled)' ]
		ifFalse: [ aStream << 'disabled)' ].
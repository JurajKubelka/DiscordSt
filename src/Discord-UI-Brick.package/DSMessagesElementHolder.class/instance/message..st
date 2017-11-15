accessing
message: anObject
	message = anObject ifTrue: [ ^ self ].
	message := anObject.
	itemElement message: anObject.
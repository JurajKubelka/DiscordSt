accessing
content: anObject
	| newValue |
	newValue := anObject asString.
	^ self fieldsAt: 'content' put: (newValue first: (self class contentLimit min: newValue size))
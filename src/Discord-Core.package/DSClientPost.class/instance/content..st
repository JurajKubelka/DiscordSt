accessing
content: anObject
	"Set the message contents (up to 2000 characters)"
	| newValue |
	newValue := anObject asString.
	^ self fieldsAt: 'content' put: (newValue first: (self class contentLimit min: newValue size))
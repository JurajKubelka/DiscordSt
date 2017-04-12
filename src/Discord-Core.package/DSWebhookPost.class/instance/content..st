accessing
content: anObject
	| newValue |
	newValue := anObject asString.
	content := newValue first: (self class contentLimit min: newValue size)
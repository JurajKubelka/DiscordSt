accessing
name
	^ self screenshot ifNotNil: #label ifNil: 'without screenshot'
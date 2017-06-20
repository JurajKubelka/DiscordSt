accessing
fieldObjects
	^ self fieldsAt: 'fields' ifAbsentPut: [ OrderedCollection new ]
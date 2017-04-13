accessing
embeds
	^ self fieldsAt: 'embeds' ifAbsentPut: [ OrderedCollection new ]
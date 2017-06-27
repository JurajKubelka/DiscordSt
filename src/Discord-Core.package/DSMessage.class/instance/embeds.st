accessing
embeds
	"Get embeds objects."
	^ self fieldsAt: 'embeds' ifAbsentPut: [ OrderedCollection new ]
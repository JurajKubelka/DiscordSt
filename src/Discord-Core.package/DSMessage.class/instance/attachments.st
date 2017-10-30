accessing
attachments
	"Get attached files."
	^ self fieldsAt: 'attachments' ifAbsentPut: [ Array new ]
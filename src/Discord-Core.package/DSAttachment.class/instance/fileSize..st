accessing
fileSize: integer
	"Set size of file in bytes"
	^ self fieldsAt: 'size' put: integer
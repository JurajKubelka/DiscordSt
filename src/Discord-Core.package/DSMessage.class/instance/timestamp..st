accessing
timestamp: string
	"Set when this message was sent."
	^ self fieldsAt: 'timestamp' put: string
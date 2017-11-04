accessing
topic: string
	"Set the channel topic (0-1024 characters).
	Present only for text type channels."
	^ self fieldsAt: 'topic' put: string
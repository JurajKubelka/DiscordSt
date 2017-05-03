accessing
username: string
	"Set the user's username, not unique across the platform."
	^ self fieldsAt: 'username' put: string
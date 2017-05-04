accessing
owner: boolean
	"Set to true if the authenticated user is an owner of the guild."
	^ self fieldsAt: 'owner' put: boolean
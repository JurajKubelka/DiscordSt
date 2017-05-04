accessing
userLimit: integer
	"Set the user limit of the voice channel.
	Present only in voice type channels."
	^ self fieldsAt: 'user_limit' put: integer
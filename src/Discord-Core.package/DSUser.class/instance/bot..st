accessing
bot: boolean
	"Set whether the user belongs to an OAuth2 application."
	^ self fieldsAt: 'bot' put: boolean
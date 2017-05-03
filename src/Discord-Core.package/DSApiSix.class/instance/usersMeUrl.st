defaults - api
usersMeUrl
	"Return Discord API URL to ask for logged user's information."
	^ self apiUrl / 'users'/ '@me'
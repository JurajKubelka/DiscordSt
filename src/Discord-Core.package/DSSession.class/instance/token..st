accessing
token: aString
	"Set token used to authorize Discord opperations."
	self ensureVolatileToken.
	token string: aString
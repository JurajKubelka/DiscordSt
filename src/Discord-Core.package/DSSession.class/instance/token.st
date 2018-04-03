accessing
token
	"Get token used to authorize Discord opperations."
	self ensureVolatileToken.
	^ token value
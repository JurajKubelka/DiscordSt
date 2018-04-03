accessing
password: aString
	"Set password used to login into a Discord server."
	self ensureVolatilePassword.
	password string: aString
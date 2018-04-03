accessing
password
	"Get password used to login into a Discord server."
	self ensureVolatilePassword.
	^ password value
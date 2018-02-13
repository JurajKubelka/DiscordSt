protocol
authenticate
	"Authenticate the client"
	self isAuthenticated ifFalse: [ self shouldNotImplement ]
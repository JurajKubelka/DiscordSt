testing
isAuthenticated
	"Return true if token is not nil. It means that the client was previously authenticated successfully."
	^ self token notNil
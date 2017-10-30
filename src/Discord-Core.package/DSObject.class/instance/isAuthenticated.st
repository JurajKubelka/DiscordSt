testing
isAuthenticated
	"Return true if the client is authenticated."

	^ self restApi ifNotNil: #isAuthenticated ifNil: false
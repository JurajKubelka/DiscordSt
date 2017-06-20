testing
isAuthenticated
	"Return true if the client is authenticated."
	^ self api ifNotNil: #isAuthenticated ifNil: false 
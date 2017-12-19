visiting
visitDSClientRegistry: aDSClientRegistry 
	aDSClientRegistry isAuthenticated 
		ifTrue: [ self updateAuthenticatedClientRegistry: aDSClientRegistry ]
		ifFalse: [ self updateUnauthenticatedClientRegistry: aDSClientRegistry ]
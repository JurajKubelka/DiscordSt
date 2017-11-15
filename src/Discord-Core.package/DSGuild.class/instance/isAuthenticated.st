testing
isAuthenticated
	^ self restApi ifNotNil: #isAuthenticated ifNil: false 
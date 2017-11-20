testing
isAuthenticated
	^ self notEmpty and: [ self anyOne isAuthenticated ]
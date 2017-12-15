convenient
servers
	^ self registry isAuthenticated
		ifTrue: [ self registry servers ]
		ifFalse: [ #() ]
instance creation
newZnClientAuthenticated
	self session isAuthenticated ifFalse: [ 
		DSTokenRequiredError signal: 'Cannot authorize the client.' ].
	^ self newZnClientWithUserAgent 
		headerAt: 'Authorization' put: self session token;
		yourself
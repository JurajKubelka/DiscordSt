instance creation
newZnClientAuthenticated
	self session isAuthenticated ifFalse: [ 
		DSTokenRequiredError signal: 'Cannot authorize the client.' ].
	^ authentication accept: self
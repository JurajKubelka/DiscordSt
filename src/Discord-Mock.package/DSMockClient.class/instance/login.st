public
login
	loginAction cull: self.
	self isAuthenticated ifTrue: [ self announce: DSAuthenticatedAnnouncement ].
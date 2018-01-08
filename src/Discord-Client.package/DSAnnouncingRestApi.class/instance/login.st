public - authentication
login
	self catchDiscordErrorDuring: [ 
		self restApi login.
		self announce: DSAuthenticatedAnnouncement ]
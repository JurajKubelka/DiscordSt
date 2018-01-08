public - authentication
logout
	self catchDiscordErrorDuring: [ 
		self restApi logout.
		self announce: DSUnauthenticatedAnnouncement ]
protocol
login
	"Login to Discord. 
	Raise DSCannotLogin on incorrect email or password.
	Raise NetworkError on any network problem."

	self restApi login.
	self announce: DSAuthenticatedAnnouncement.
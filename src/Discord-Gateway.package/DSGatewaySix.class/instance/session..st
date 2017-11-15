accessing
session: aDSSession
	"Set session object that keeps email, password and token for the Discord communication."
	super session: aDSSession.
	receiver session: aDSSession.
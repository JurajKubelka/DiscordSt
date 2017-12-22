initialization
defaultCollection
	"Return a collection of default items that should be send (displayed to user)."
	^ OrderedCollection 
		with: DSSendUserTextMessageItem new
		with: DSSendRegistriesItem new.
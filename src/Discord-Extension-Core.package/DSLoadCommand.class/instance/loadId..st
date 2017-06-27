protocol
loadId: aString 
	"Download and materialize data attached to a specific message, identified by idString."
	self loginIfNecessary.
	
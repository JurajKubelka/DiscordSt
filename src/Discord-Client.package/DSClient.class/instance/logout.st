protocol
logout
	"Logout from Discord.
	Currently, it only deletes token."

	self restApi isAuthenticated 
		ifTrue: [ self restApi logout ]
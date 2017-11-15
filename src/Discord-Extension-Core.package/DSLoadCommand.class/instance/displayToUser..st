private
displayToUser: anObject 
	"Display the object into a user, e.g., in an Inspector.
	Double dispatch is used in order to customize the way, 
	objects are present to the user.
	Return a graphical object (window) that holds the object."
	^ anObject discordAccept: self
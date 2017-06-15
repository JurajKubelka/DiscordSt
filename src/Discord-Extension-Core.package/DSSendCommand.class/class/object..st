public
object: anObject
	"Send an object to a Discord channel using FUEL serialization.
	It is recommended to use the #sendObject: method from UIs (buttons)."
	self new
		object: anObject;
		askForMessage
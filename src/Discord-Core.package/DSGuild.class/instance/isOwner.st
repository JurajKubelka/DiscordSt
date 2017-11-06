testing
isOwner
	"Return true if the currently logged user is the server owner;
	false otherwise."
	^ self owner ifNil: false
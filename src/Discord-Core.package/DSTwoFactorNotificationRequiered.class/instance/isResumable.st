testing
isResumable
	"Determine whether an exception is resumable."
	^ code isString and: [ code notEmpty ]
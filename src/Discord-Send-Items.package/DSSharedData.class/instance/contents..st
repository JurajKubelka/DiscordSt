accessing
contents: aByteArray
	"It receives a byte array.
	Each data object is responsible to convert it to a meaningful object, e.g., code snippet (string)."
	^ self subclassResponsibility
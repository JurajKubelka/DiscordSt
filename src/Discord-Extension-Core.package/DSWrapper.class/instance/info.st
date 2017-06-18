accessing
info
	"Return a dictionary of all additional information, e.g., from command extensions."
	^ info ifNil: [ info := Dictionary new ]
accessing
addAllInfo: aDictionary 
	"Copy all extra info, e.g., from a command."
	aDictionary ifEmpty: [ ^ aDictionary ].
	^ self info addAll: aDictionary
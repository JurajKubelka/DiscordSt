*Discord-Extension-Core
includesFuelId: aString 
	"Return true if includes a FUEL field with corresponding id."
	^ self fieldObjects anySatisfy: [ :eachEmbed | eachEmbed includesFuelId: aString ]
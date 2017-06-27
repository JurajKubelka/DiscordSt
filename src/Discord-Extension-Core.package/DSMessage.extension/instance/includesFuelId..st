*Discord-Extension-Core
includesFuelId: aString 
	"Return true if any of embeds includes a FUEL field with corresponding id."
	^ self embeds anySatisfy: [ :eachEmbed | eachEmbed includesFuelId: aString ]
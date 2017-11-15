*Discord-Extension-Core
includesFuelId: aString 
	"Return true if aincludes a FUEL field with corresponding id."
	^ self isFuel and: [ self value notNil and: [ self value includesSubstring: aString ] ]
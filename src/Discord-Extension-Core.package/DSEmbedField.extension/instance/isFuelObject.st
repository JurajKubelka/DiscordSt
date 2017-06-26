*Discord-Extension-Core
isFuelObject
	"Return true if name is FUEL and value is Object"
	^ self isFuel and: [ self value notNil and: [ self value = DSSendObjectCommand commandName or: [ 
		self value includesSubstring: 'fuel=', DSSendObjectCommand commandName ] ] ]
*Discord-Extension-Core
isFuelObject
	"Return true if name is FUEL and value is Object"
	^ self isFuel and: [ self value = DSSendObjectCommand commandName ]
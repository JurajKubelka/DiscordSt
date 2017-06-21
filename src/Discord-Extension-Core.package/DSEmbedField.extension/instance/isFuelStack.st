*Discord-Extension-Core
isFuelStack
	"Return true if the field name is FUEL and value is Stack"
	^ self isFuel and: [ self value = DSSendStackCommand commandName ]
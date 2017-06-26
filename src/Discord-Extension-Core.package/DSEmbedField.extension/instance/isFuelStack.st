*Discord-Extension-Core
isFuelStack
	"Return true if the field name is FUEL and value is Stack"
	^ self isFuel and: [ self value notNil and: [ self value = DSSendStackCommand commandName or: [ 
		self value includesSubstring: 'fuel=', DSSendStackCommand commandName ] ] ]
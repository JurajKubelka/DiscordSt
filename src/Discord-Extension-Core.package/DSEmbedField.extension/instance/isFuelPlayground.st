*Discord-Extension-Core
isFuelPlayground
	"Return true if name is FUEL and value is Playground"
	^ self isFuel and: [ self value notNil and: [ self value = DSSendObjectCommand commandName or: [ 
		self value includesSubstring: 'fuel=', DSSendPlaygroundCommand commandName ] ] ]
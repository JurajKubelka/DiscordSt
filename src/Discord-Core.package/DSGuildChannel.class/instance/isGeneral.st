testing
isGeneral
	"Return true, if this is a general channel."
	^ self id notNil and: [ self id = self guildId ]
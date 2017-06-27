enumerating
named: guildName 
	"Return a DSGuildName object with the given name."
	^ self detect: [ :guild | guild name = guildName ]
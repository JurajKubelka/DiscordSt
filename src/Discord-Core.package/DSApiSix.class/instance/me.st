public
me
	"Return User object that identyfies the logged user.
	See https://discordapp.com/developers/docs/resources/user#user-object"
	^ self 
		cacheAt: 'me'
		ifAbsentPut: [ self newMeUser ]
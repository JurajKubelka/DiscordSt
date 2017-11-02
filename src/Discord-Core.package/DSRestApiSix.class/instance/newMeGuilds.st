instance creation
newMeGuilds
	"Returns a list of user guild objects the current user is a member of.
	See https://discordapp.com/developers/docs/resources/user#get-current-user-guilds"
	| response |
	response := (self newZnClientAuthenticated)
		url: self usersMeGuildsUrl;
		get;
		response.
	^ response isSuccess 
		ifTrue: [ DSUserGuild collectionFromJsonString: response contents api: self ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]
public - user
me
	"Return User object that identyfies the logged user.
	See https://discordapp.com/developers/docs/resources/user#user-object"
	| response |
	response := self newZnClientAuthenticated
		url: self usersMeUrl;
		get;
		response.
	^ response isSuccess 
		ifTrue: [ | user |
			user := DSModelJsonMapping 
				read: DSUser
				withMapping: #userMappingFor:
				on: response contents readStream.
			user restApi: self.
			^ user ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]
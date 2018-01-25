instance creation
newMeUser
	"Return User object that represent the authenticated user"
	| response |
	response := (self newZnClientAuthenticated)
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
instance creation
newMeUser
	"Return User object that represent the authenticated user"
	| response |
	response := (self newZnClientAuthenticated)
		url: self usersMeUrl;
		get;
		response.
	^ response isSuccess 
		ifTrue: [ DSUser fromJsonString: response contents ]
		ifFalse: [ DSUnauthorizedOperationError new
			response: response;
			signal: response contents ]
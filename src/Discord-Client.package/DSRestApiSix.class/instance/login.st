public
login
	| response |
	self resetCache.
	response := self newZnClientWithUserAgent
		url: self loginAuthUrl;
		entity: (ZnEntity text: self emailAndPasswordJson);
		contentType: ZnMimeType applicationJson;
		post;
		response.
	response isSuccess 
		ifTrue: [ self processLoginResponse: response ]
		ifFalse: [ DSCannotLoginError new 
			response: response;
			signal: response contents ]
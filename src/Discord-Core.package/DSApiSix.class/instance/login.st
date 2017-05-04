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
		ifTrue: [ self session token: ((self toJsonObject: response contents) at: self tokenKey) ]
		ifFalse: [ DSCannotLoginError new 
			response: response;
			signal: response contents ]
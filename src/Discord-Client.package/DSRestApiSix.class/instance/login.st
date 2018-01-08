public
login
	| response |
	response := self newZnClientWithUserAgent
		url: self loginAuthUrl;
		entity: (ZnEntity text: self emailAndPasswordJson);
		contentType: ZnMimeType applicationJson;
		post;
		response.
	response isSuccess 
		ifTrue: [ self session token: ((NeoJSONObject fromString: response contents) at: self tokenKey) ]
		ifFalse: [ DSCannotLoginError new 
			response: response;
			signal: response contents ]
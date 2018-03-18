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
		ifTrue: [ | jsonObject token |
			jsonObject := NeoJSONObject fromString: response contents.
			token := jsonObject at: self tokenKey.
			token ifNil: [ DSTwoFactorAuthenticationNotSupportedError new
				response: response;
				signal: response contents ].
			self token: (jsonObject at: self tokenKey) ]
		ifFalse: [ DSCannotLoginError new 
			response: response;
			signal: response contents ]
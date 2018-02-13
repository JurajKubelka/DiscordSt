public - authentication
logout
	| response |
	self isAuthenticated ifFalse: [ ^ self ].
	response := self newZnClientAuthenticated
		url: self logoutAuthUrl;
		entity: (ZnEntity text: self tokenJson);
		contentType: ZnMimeType applicationJson;
		post;
		response.
	response isSuccess
		ifTrue: [ self session resetToken. ]
		ifFalse: [ DSUnauthorizedOperationError new 
			response: response;
			signal: response contents ].
	

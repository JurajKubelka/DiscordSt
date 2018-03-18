private
doTwoFactorAuthenticationRequest: aZnResponse ticket: ticketString 
	| code response jsonObject token |
	code := DSTwoFactorNotificationRequiered new
		signal: 'Provide Two-Factor-Authentication Code';
		code.
	response := self newZnClientWithUserAgent 
		url: self apiUrl / 'auth' / 'mfa' / 'totp';
		entity: (ZnEntity text: '{"ticket": "', ticketString asString, '", "code": "', code asString, '"}');
		contentType: ZnMimeType applicationJson;
		post;
		response.
	response isSuccess 
		ifTrue: [ 
			jsonObject := NeoJSONObject fromString: response contents.
			token := jsonObject at: self tokenKey.
			token ifNil: [ 
				self 
					raiseLoginErrorOn: response 
					message: 'Cannot login', String cr, response contents asString ].
			self token: token ]
		ifFalse: [ 
			 self raiseLoginErrorOn: response message: response contents asString ]
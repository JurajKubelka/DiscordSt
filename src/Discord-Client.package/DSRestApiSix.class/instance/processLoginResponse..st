private
processLoginResponse: aZnResponse 
	"Login may require a Two-Factor-Authentication"
	 | jsonObject token mfa ticket |
	jsonObject := NeoJSONObject fromString: aZnResponse contents.
	mfa := jsonObject at: 'mfa'.
	token := jsonObject at: self tokenKey.
	token 
		ifNil: [ 
			mfa 
				ifTrue: [ 
					ticket := jsonObject at: 'ticket'.	
					self doTwoFactorAuthenticationRequest: aZnResponse ticket: ticket ]
				ifFalse: [ self raiseLoginErrorOn: aZnResponse message: 'Cannot login' ]
			 ]
		ifNotNil: [ self token: (jsonObject at: self tokenKey) ]
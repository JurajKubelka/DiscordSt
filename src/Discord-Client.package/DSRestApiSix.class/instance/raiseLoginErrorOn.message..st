private
raiseLoginErrorOn: aZnResponse message: aString 
	DSCannotLoginError new 
		response: aZnResponse;
		signal: aString
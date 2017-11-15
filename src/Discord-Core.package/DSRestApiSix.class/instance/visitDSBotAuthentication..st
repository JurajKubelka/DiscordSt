visiting
visitDSBotAuthentication: aDSBotAuthentication 
	^ self newZnClientWithUserAgent 
		headerAt: 'Authorization' put: 'Bot ', self session token asString;
		yourself
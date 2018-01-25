visiting
visitDSUserAuthentication: aDSUserAuthentication
	^ self newZnClientWithUserAgent 
		headerAt: 'Authorization' put: self session token;
		yourself
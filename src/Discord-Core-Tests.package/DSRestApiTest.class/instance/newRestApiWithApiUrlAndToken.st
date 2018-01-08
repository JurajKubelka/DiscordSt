as yet unclassified
newRestApiWithApiUrlAndToken
	^ self classToTest new
			apiUrl: self apiUrl;
			token: self constants tokenString;
			yourself
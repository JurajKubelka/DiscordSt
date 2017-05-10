accessing
apiUrl
	"Return an URL object pointing to a Fake Discord test server."
	^ self url
		addPathSegment: 'api';
		yourself
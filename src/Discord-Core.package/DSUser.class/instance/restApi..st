accessing
restApi: aRestApi
	[ aRestApi isAsyncApi not ] assert.
	restApi := aRestApi
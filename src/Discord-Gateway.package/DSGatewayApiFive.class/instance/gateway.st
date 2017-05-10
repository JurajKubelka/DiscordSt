public
gateway
	"Returns an object with a single valid WSS URL, which the client can use as a basis for Connecting. 
	Clients should cache this value and only call this endpoint to retrieve a new URL 
	if they are unable to properly establish a connection using the cached version of the URL.
	
	This endpoint does not require any authentication."
	^ self 
		cacheAt: 'gateway'
		ifAbsentPut: [ self getGateway ]
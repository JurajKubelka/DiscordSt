testing
isAlive
	"Answer whether the conncection is alive"
	^ (self cacheAt: #sessionId) notNil
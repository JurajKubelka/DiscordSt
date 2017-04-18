configuration
supressNetworkErrors
	"Ignore network errors during the requests."
	self ifFail: [ :exception | exception ]
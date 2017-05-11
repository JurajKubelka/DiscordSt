mock
assertServerSemaphore
	"Assert that semaphore is signalized in a specified time.
	See the startZnServer method."
	self 
		deny: (server semaphore waitTimeoutMSecs: self serverSemaphoreTimeout)
		description: 'The server semaphore was not signalized in time'
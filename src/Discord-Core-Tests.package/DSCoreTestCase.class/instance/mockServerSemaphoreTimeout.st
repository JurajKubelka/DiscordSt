mock
mockServerSemaphoreTimeout
	"Get the default server semaphore timeout in milliseconds"
	^ serverSemaphoreTimeout ifNil: 200
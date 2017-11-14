initialize-release
close
	"Close the connection"
	
	(MutexSet withAll: { readMutex. writeMutex }) critical: [ 
		self websocket ifNotNil: [ :aWebSocket | aWebSocket isConnected ifTrue: [ aWebSocket close ] ] ]
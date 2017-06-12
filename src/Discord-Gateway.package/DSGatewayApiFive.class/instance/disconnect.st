public
disconnect
	"Close the connection with the Discord Gateway.
	See https://discordapp.com/developers/docs/topics/gateway#connecting
	
	Currently, we do not close the WebSocket. It should be improved and the WebSocket
	should be closed when both processes terminate."
	self stopProcesses.
	(MutexSet withAll: { readMutex. writeMutex }) 
		critical: [ self websocket ifNotNil: [ :aWebSocket |
				[ aWebSocket close ] 
				on: ConnectionClosed, ConnectionTimedOut
				do: [ "ignore" ] ] ]
running
tearDown
	websocket ifNotNil: [ :aWebSocket | [ aWebSocket close ] 
		on: ConnectionTimedOut, ConnectionClosed do: [ "ignore" ] ].
	super tearDown
running
tearDown
	websocket ifNotNil: [ :aWebSocket | 
		[ aWebSocket close ] on: ConnectionClosed, ConnectionTimedOut do: [ "ignore" ] ].

running
tearDown
	server ifNotNil: #stop.
	api ifNotNil: [ :anApi | [ anApi websocket ifNotNil: #close ] on: ConnectionClosed, ConnectionTimedOut do: [ "ignore" ] ].
	super tearDown.
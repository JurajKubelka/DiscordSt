running
tearDown
	websocket ifNotNil: #close.
	super tearDown.
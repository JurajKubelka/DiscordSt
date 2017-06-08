running
tearDown
	server ifNotNil: #stop.
	api ifNotNil: [ :anApi | anApi websocket ifNotNil: #close ].
	super tearDown.
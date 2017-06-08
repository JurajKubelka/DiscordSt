running
tearDown
	command ifNotNil: [ :aCommand | 
		aCommand websocket ifNotNil: #close ]
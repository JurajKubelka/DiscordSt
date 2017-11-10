testing
ifConnected: oneArgBlock
	"Evaluate oneArgBlock if connected" 
	^ mutex critical: [ 
		self hasConnectedWebSocket ifTrue: [ oneArgBlock value: self websocket ] ]
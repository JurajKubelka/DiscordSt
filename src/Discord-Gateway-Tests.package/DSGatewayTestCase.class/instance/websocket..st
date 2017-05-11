mock
websocket: aZnWebSocket 
	"Set a Mock WebSocket handler object"
	self serverRequests add: #websocket.
	websocket := aZnWebSocket.
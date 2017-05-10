as yet unclassified
execute
	"Establish the WebSocket with a Discord Gateway. 
	The api object knows the URL. I set
	See https://discordapp.com/developers/docs/topics/gateway#get-gateway"
	self api websocket: (ZnWebSocket to: self api gateway).
I am responsible for the connection with the Discord Gateway server.

I do the following steps:
- establish a WebSocket connection, using a given gatewayUrl address
- receive OP 10 HELLO code which includes heartbeat interval
- send OP 2 Identify code, using a given identifyData object
- receive Ready Event which includes session ID and sequence number, both used while recuming connection

I am used by DSGatewayApiFive.

Public API and Key Messages

- websocket: - set existing WebSocket object if any
- gatewayUrl: - set Discord Gateway URL if it is necessary to establish new connection
- identifyData: - data used for a user identification (it includes token)
- execute - connect to the Discord Gateway server

{{{
DSGatewayConnectCommand new
		websocket: nil;
		gatewayUrl: 'wss://gateway.discord.gg?v=5&enconding=json';
		identifyData: "see DSGatewayApiFive identifyData method";
		execute;
}}}
 
Internal Representation and Key Implementation Points.

    Instance Variables
	gatewayUrl:		<ZnUrl>
	heartbeatInterval:		<Integer>
	identifyData:		<Dictionary>
	sequenceNumber:		<Integer>
	sessionId:		<String>
	websocket:		<ZnWebSocket>

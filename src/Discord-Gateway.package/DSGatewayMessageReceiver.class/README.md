I am responsible for receiving and processing the Discrod Gateway messages. I receive the messages in value: message. 

I know how to transform messages to objects.

DSGatewayReadingProcess used me and send me all the received messages.

Public API and Key Messages

- value: - receive the Discord Gateway message and process it
- websocket: - set the Discord Gateway WebSocket object.

Internal Representation and Key Implementation Points.

    Instance Variables
	websocket:		<DSGatewayWebSocket>

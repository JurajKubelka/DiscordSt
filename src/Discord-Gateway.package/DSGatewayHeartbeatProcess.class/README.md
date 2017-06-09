I represent a process that sends regularly Heartbeats to a Discord Gateway server.

DSGatewayApiFive uses me and it has to provide me the following:
- a connected WebSocket object 
- sequence number that is a number of the last received OP message
- heartbeat interval in milliseconds that says how often I should send the Heartbeat signal.
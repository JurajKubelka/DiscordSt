I represent a process that reads in a infinite cycle events and messages from a Discord Gateway server.

DSGatewayApiFive uses me and it has to provide me the following:
- a connected WebSocket object
- a receiver object that is an object (a block closure) that understands #value: message. It receives all raw messages (strings) from the Discord Gateway server.

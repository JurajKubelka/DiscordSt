accessing
code
	"Return the Discord Gateway code.
	See https://discordapp.com/developers/docs/topics/gateway#gateway-op-codespayloads
	
	Code	Name	Description
	0	Dispatch	dispatches an event
	1	Heartbeat	used for ping checking
	2	Identify	used for client handshake
	3	Status Update	used to update the client status
	4	Voice State Update	used to join/move/leave voice channels
	5	Voice Server Ping	used for voice ping checking
	6	Resume	used to resume a closed connection
	7	Reconnect	used to tell clients to reconnect to the gateway
	8	Request Guild Members	used to request guild members
	9	Invalid Session	used to notify client they have an invalid session id
	10	Hello	sent immediately after connecting, contains heartbeat and server debug information
	11	Heartbeat ACK	sent immediately following a client heartbeat that was received"
	^ self subclassResponsibility
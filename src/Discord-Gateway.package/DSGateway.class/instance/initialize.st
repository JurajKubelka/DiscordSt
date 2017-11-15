initialization
initialize
	super initialize.
	announcer := self newAnnouncer.
	websocket := self newGatewayWebsocket.
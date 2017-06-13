accessing
gatewayApi
	"Return object responsible for Discord Gateway API (WebSocket) communication."

	^ gateway
		ifNil: [ gateway := self newGatewayApi
				session: self restApi session;
				readyBlock: [ :msg | self readyEvent: msg ];
				messageCreateBlock: [ :msg | self messageCreateEvent: msg ];
				messageUpdateBlock: [ :msg | self messageUpdateEvent: msg ];
				yourself ]
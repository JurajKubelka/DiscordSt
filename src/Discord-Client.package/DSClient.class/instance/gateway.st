accessing
gateway
	"Return object responsible for Discord Gateway API (WebSocket) communication."
	^ gateway ifNil: [ gateway := self newGatewayApi session: self api session ]
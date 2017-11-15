accessing
gateway
	"Return object responsible for Discord Gateway API (WebSocket) communication."
	^ gateway
		ifNil: [ gateway := self newGateway
				session: self session;
				announcer: self announcer;
				yourself ]
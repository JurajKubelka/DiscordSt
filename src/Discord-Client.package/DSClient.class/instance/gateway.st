accessing
gateway
	"Return object responsible for Discord Gateway API (WebSocket) communication."
	self 
		deprecated: 'Use gatewayApi instead'
		on: 	'13 June 2017' 
		in: 'Pharo-6.0-60499-'
		transformWith: '`@receiver gateway' -> '`@receiver gatewayApi'.
	^ self gatewayApi
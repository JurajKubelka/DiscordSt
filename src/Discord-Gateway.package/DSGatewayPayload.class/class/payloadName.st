accessing
payloadName
	"Return Payload name from the class name.
	It removes the prefix DSGateway."
	^ self name asString allButFirst: 9 
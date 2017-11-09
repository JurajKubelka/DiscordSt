enumerating
allPayloads
	"Return all classes representing payloads."
	<return: #Array of: #DSGatewayPayload>
	^ self allSubclasses reject: #isAbstract
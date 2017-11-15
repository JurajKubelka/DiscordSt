json example - payload
jsonMessageCreatePayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonMessage, ',"s":4,"t":"MESSAGE_CREATE"}'
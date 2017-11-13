json example - payload
jsonMessageUpdatePayload
	^ '{"op":0,"d":', self coreModelJsonMapping jsonMessage, ',"s":5,"t":"MESSAGE_UPDATE"}'
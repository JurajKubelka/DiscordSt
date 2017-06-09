accessing
heartbeatString
	^ (DSGatewayPayload newHeartbeat: self sequenceNumber) asDiscordJSONString
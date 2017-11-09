accessing
heartbeatString
	^ (DSGatewayObsoletePayload newHeartbeat: self sequenceNumber) asDiscordJSONString
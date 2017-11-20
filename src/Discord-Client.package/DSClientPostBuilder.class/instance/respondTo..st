protocol - sending
respondTo: aDSMessage 
	self client restApi
		sendJsonMessage: post
		toGuildTextOrDMChannelId: aDSMessage channelId
		signalProgress: self signalProgress
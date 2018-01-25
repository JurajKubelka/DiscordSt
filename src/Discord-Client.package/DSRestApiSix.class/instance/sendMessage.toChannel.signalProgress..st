public - channel
sendMessage: aDSClientPost toChannel: aDSChannel signalProgress: aBoolean 
	^ self sendMessage: aDSClientPost toGuildTextOrDMChannelId: aDSChannel id signalProgress: aBoolean
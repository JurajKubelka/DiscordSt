ui
displayProgress: aString whileSending: aMessageBuilder toChannel: aDSGuildChannel
	^ DSUtility
		displayHTTPProgress: aString
		during: [ aMessageBuilder
				signalProgress: true;
				channel: aDSGuildChannel;
				send ]
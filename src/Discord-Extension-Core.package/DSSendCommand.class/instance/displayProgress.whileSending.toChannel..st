ui
displayProgress: aString whileSending: aMessageBuilder toChannel: aDSGuildChannel
	^ DSUtility displayHTTPProgress: aString during: [ aMessageBuilder sendTo: aDSGuildChannel ]
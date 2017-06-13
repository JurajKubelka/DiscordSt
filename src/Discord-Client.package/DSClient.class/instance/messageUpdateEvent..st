event handling
messageUpdateEvent: aDSMessage
	"Announce message update.
	As the message update does not necessary includes the whole message, 
	we ask for the the full message."

	"| message |
	message := self restApi messageForId: aDSMessage id inChannelId: aDSMessage channelId."
	self announce: (DSMessageUpdateAnnouncement new
				message: aDSMessage;
				yourself)
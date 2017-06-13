event handling
messageCreateEvent: aDSMessage
	"Announce new message"

	aDSMessage api: self restApi.
	self
		announce:
			(DSMessageCreateAnnouncement new
				message: aDSMessage;
				yourself)
private - announcing
announceConnected
	self client announcer
		announce:
			(DSClientConnectedAnnouncement new
				client: self client;
				yourself)
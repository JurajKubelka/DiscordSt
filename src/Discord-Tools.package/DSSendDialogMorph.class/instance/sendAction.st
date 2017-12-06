private - actions
sendAction
	self doAnnounce: (DSScreenshotSendRequestAnnouncement new morph: self; yourself).
	self close.
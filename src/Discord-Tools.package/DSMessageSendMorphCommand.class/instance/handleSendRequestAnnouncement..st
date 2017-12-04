as yet unclassified
handleSendRequestAnnouncement: aDSScreenshotSendRequestAnnouncement 
	self sendAction ifNil: [ ^ self ].
	message := aDSScreenshotSendRequestAnnouncement morph message.
	isMorphSelected := aDSScreenshotSendRequestAnnouncement morph isScreenshotSelected.
	self sendAction cull: self
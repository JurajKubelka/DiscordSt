adding
add: aDSScreenshot
	self screenshots add: aDSScreenshot.
	self announcer announce: (DSSendAttachmentChangedAnnouncement new attachment: self; yourself).
	^ aDSScreenshot
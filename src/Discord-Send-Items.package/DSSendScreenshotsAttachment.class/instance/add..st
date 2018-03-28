adding
add: aDSScreenshot
	aDSScreenshot isEnabled: self isSelectedAndEnabled.
	self screenshots add: aDSScreenshot.
	self announcer announce: (DSContentChangedAnnouncement new 
		object: self; 
		state: aDSScreenshot; 
		yourself).
	^ aDSScreenshot
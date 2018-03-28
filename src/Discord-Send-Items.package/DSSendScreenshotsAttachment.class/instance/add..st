adding
add: aDSScreenshot
	self screenshots add: aDSScreenshot.
	self announcer announce: (DSContentChangedAnnouncement new 
		object: self; 
		state: aDSScreenshot; 
		yourself).
	^ aDSScreenshot
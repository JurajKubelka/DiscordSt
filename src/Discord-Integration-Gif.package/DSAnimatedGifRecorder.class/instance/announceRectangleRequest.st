announcing
announceRectangleRequest
	| announcement |
	announcement := DSGifRectangleRequestAnnouncement recorder: self.
	self announcer announce: announcement.
	rectangle := announcement rectangle.
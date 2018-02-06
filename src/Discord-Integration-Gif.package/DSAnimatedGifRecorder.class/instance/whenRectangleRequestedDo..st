subscription
whenRectangleRequestedDo: aBlockClosure 
	self announcer 
		subscribe: DSGifRectangleRequestAnnouncement 
		do: aBlockClosure
subscription
whenRecordingFinishedDo: aBlockClosure 
	self announcer 
		subscribe: DSGifRecordingFinishedAnnouncement 
		do: aBlockClosure
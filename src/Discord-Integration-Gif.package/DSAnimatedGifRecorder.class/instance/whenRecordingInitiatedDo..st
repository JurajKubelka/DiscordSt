subscription
whenRecordingInitiatedDo: aBlockClosure 
	self announcer 
		subscribe: DSGifRecordingInitiatedAnnouncement 
		do: aBlockClosure
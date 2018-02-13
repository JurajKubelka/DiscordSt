subscription
whenRecordingCanceledDo: aBlockClosure 
	self announcer 
		subscribe: DSGifRecordingCanceledAnnouncement 
		do: aBlockClosure
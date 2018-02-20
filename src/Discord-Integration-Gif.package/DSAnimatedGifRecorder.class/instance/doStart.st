private
doStart
	bytes := nil.
	writeStream := ByteArray new writeStream.
	writer := GIFReadWriter on: writeStream.
	writer delay: 20.
	isRecording := true.
	self announceRecordingInitiated.
	World 
		startStepping: self 
		at: Time millisecondClockValue 
		selector: #doOneRecord 
		arguments: {} 
		stepTime: 20.
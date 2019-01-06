private
doStart
	bytes := nil.
	writeStream := ByteArray new writeStream.
	writer := GIFReadWriter on: writeStream.
	writer loopCount: -1. "Ensures infinite loop"
	isRecording := true.
	self announceRecordingInitiated.
	World 
		startStepping: self 
		at: Time millisecondClockValue 
		selector: #doOneRecord 
		arguments: {} 
		stepTime: 20.
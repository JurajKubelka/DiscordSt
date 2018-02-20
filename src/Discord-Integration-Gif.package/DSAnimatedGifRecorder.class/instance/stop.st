actions
stop
	isRecording ifFalse: [ ^ self ].
	continue := false.
	World stopStepping: self selector: #doOneRecord.
	writer close.
	writeStream close.
	bytes := writeStream contents.
	isRecording := false.
	self announceRecordingFinished.
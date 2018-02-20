actions
start
	self stop.
	self defineRectangle.
	rectangle ifNil: [ ^ self announceRecordingCanceled ].
	rectangle extent isZero ifTrue: [ ^ self announceRecordingCanceled ].
	self doStart.
accessing
gifReader
	bytes ifNil: [ ^ nil ].
	self isRecording ifTrue: [ ^ nil ].
	^ AnimatedGIFReadWriter formsFromStream: self bytes readStream
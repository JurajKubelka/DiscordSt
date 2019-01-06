accessing
gifReader
	| reader |
	bytes ifNil: [ ^ nil ].
	self isRecording ifTrue: [ ^ nil ].
	reader := GIFReadWriter on: self bytes readStream.
	Cursor wait showWhile: [
		reader
			readHeader;
			readBody ].
	^ reader
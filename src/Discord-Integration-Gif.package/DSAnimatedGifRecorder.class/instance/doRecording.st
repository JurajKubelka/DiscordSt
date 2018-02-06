private
doRecording
	process := [ 
		bytes := ByteArray streamContents: [ :aStream |
			writer := GIFReadWriter on: aStream.
			writer delay: (step * 100) asSeconds.
			self announceRecordingInitiated.
			continue := true.
			[ continue ] whileTrue: [ | form |
				form := Form fromDisplay: rectangle.
				writer nextPutImage: form.
				step wait ].
			writer close ].
		process := nil.
		self announceRecordingFinished.
	] forkAt: Processor userSchedulingPriority + 1 named: 'Animated GIF Recording Process'
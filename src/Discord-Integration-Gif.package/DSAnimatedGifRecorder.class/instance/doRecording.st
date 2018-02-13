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
	] newProcess.
	process priority: Processor userSchedulingPriority + 1.
	process name: 'Animated GIF Recording Process'.
	process resume.
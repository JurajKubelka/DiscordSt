ui
recordingLabel
	recorder isRecording ifTrue: [ ^ 'Stop Recording' ].
	recorder bytes ifNotNil: [ ^ 'Show' ].
	^ 'Start Recording'
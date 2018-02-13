ui
recordingLabel
	recorder isRecording ifTrue: [ ^ 'Stop Recording' ].
	recorder isRectangleRequested ifTrue: [ ^ 'Define Recording Area' ].
	recorder bytes ifNotNil: [ ^ 'Show' ].
	^ 'Start Recording'
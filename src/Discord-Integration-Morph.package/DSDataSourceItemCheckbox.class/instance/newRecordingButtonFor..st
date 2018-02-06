instance creation
newRecordingButtonFor: aDSAnimatedGifScreenshot
	| button |
	button := self table theme 
		newButtonIn: self table 
		for: aDSAnimatedGifScreenshot 
		getState: nil 
		action: #nextRecoringAction 
		arguments: #()
		getEnabled: nil 
		getLabel: #recordingLabel
		help: nil.
	aDSAnimatedGifScreenshot recorder
		whenRecordingInitiatedDo: [ :announcement | 
			self inform: 'Recording now...'.
			aDSAnimatedGifScreenshot changed: #recordingLabel.
			"button label: 'Stop'" ];
		whenRecordingFinishedDo: [ :announcement |
			self inform: 'Recording finished'.
			aDSAnimatedGifScreenshot changed: #recordingLabel. ].
	^ button
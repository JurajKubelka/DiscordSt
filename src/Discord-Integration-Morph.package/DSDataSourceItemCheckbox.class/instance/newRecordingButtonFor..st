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
		whenRectangleRequestedDo: [ :announcement |  
			aDSAnimatedGifScreenshot changed: #recordingLabel. ];
		whenRecordingInitiatedDo: [ :announcement | 
			aDSAnimatedGifScreenshot changed: #recordingLabel. ];
		whenRecordingFinishedDo: [ :announcement |
			aDSAnimatedGifScreenshot changed: #recordingLabel. ].
	^ button
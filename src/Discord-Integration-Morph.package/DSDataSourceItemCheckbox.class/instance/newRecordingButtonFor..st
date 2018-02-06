instance creation
newRecordingButtonFor: aDSAnimatedGifScreenshot
	| recorder button |
	recorder := DSAnimatedGifRecorder new.
	button := self table theme 
		newButtonIn: self table 
		for: recorder 
		getState: nil 
		action: #nextAction 
		arguments: #()
		getEnabled: nil 
		label: 'Start Recording' 
		help: 'Start Screen Recording'.
	recorder
		whenRectangleRequestedDo: [ :announcement | 
			self inform: 'Define recording area...' ];
		whenRecordingInitiatedDo: [ :announcement | 
			self inform: 'Recording now...'.
			button label: 'Stop' ];
		whenRecordingFinishedDo: [ :announcement |
			self inform: 'Recording finished'.
			aDSAnimatedGifScreenshot bytes: announcement recorder bytes.
			button label: 'Show' ].
	^ button
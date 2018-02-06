instance creation
newStopRecordingButtonFor: aDSAnimatedGifScreenshot
	^ self table theme 
		newButtonIn: self table 
		for: aDSAnimatedGifScreenshot 
		getState: nil 
		action: #stop 
		arguments: #() 
		getEnabled: #isSelected 
		label: 'Stop' 
		help: 'Stop Recording'
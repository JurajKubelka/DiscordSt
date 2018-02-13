instance creation
newAddGifButtonFor: aDSSendScreenshotsAttachment 
	^ self table theme 
		newButtonIn: self table 
		for: aDSSendScreenshotsAttachment 
		getState: nil 
		action: #addAnimatedGif 
		arguments: #() 
		getEnabled: #isSelected 
		label: '+animGIF' 
		help: 'Add animated GIF screenshot'
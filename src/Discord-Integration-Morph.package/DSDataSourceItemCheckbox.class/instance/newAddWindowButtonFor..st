instance creation
newAddWindowButtonFor: aDSSendScreenshotsAttachment 
	^ self table theme 
		newButtonIn: self table 
		for: aDSSendScreenshotsAttachment 
		getState: nil 
		action: #addNewWindow 
		arguments: #() 
		getEnabled: #isSelected 
		label: '+Window' 
		help: 'Add another window screenshot'
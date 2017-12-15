instance creation
newCancelButtonMorph
	^ PluggableButtonMorph
		newButtonFor: self
		getState: nil
		action: #cancel
		arguments: nil
		getEnabled: #isCancelEnabled
		label: 'Cancel'
		help: 'Close the window'
instance creation
newLoginButtonMorph
	^ (PluggableButtonMorph
		newButtonFor: self
		getState: nil
		action: #loginAction
		arguments: nil
		getEnabled: #getLoginButtonEnabled
		label: 'Login'
		help: 'Login to Discord server')
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			yourself.
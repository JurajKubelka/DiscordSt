private
askForCredentials
	"Open a dialog where someone can write email and password.
	The values are stored into the client, using email:password: method."
	| model window |
	model := DynamicComposableModel new.
	model 
		assign: LabelModel new to: #emailLabel;
		assign: TextInputFieldModel new to: #emailInput;
		assign: LabelModel new to: #passwordLabel;
		assign: TextInputFieldModel new to: #passwordInput;
		assign: OkCancelToolbar new to: #toolbar.
	model emailLabel label: 'Email: '.
	model emailInput text: self client email; autoAccept: true.
	model passwordLabel label: 'Password: '.
	model passwordInput text: self client password; autoAccept: true; beEncrypted.
	model toolbar okButton label: 'Login'.
	model toolbar okAction: [ self email: model emailInput text password: model passwordInput text; login ].
	model extent: 400 @ (model class inputTextHeight * 4.2).
	window := model openWithSpecLayout: (SpecColumnLayout composed
		newRow: [ :row | row add: #emailLabel width: 70. row add: #emailInput ] height: model class inputTextHeight;
		newRow: [ :row | row add: #passwordLabel width: 70. row add: #passwordInput ] height: model class inputTextHeight;
		newRow: [ :row | row add: #toolbar ] height: model class inputTextHeight;
		"send: #hShrinkWrap;"
    	yourself).
	window title: 'Login to Discord Server'.
	window whenClosedDo: [ self signalAnswer ].
	^ window
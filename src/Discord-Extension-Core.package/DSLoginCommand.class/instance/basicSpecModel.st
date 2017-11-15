ui
basicSpecModel
	"Return a basic Spec model that includes email and password input fields.
	It does not includes the layout."
	| model |
	model := DynamicComposableModel new
		assign: LabelModel new to: #emailLabel;
		assign: TextInputFieldModel new to: #emailInput;
		assign: LabelModel new to: #passwordLabel;
		assign: TextInputFieldModel new to: #passwordInput;
		yourself.
	model emailLabel label: 'Email: '.
	model emailInput text: self client email; autoAccept: true.
	model passwordLabel label: 'Password: '.
	model passwordInput text: self client password; autoAccept: true; beEncrypted.
	model layout: self basicSpecLayout.
	^ model
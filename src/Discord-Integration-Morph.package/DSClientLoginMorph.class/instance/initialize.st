initialization
initialize
	super initialize.
	emailModel := RubScrolledTextModel new.
	emailModel interactionModel: self.
	passwordModel := RubScrolledTextModel new.
	passwordModel interactionModel: self.
	onLoginRequest := [ :email :password | "ignore" ].	
	self cellPositioning: #topLeft.
	self addMorphBack: self newEmailFieldMorph.
	self addMorphBack: self newPasswordFieldMorph.
	self addMorphBack: self newLoginButtonMorph.
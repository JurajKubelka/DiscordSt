private
loginTo: aDSClientRegistry email: emailString password: passwordString
	[ [ aDSClientRegistry
		email: emailString;
		password: passwordString;
		login ]
		on: DSTwoFactorNotificationRequiered
		do: [ :exception | self provideTwoFactorCode: exception ] ]
		on: Error
		do:
			[ :exception | self informAboutLoginException: exception ]
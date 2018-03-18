private
provideTwoFactorCode: aDSTwoFactorNotificationRequiered 
	| codeOrNil |
	codeOrNil := UIManager default 
		request: 'Provide Discord Two-Factor-Authentication code' 
		initialAnswer: '' 
		title: 'Discord Two-Factor-Authentication'.
	codeOrNil ifNil: [ aDSTwoFactorNotificationRequiered pass ].
	(codeOrNil isString and: [ codeOrNil notEmpty ]) ifFalse: [ aDSTwoFactorNotificationRequiered pass ].
	aDSTwoFactorNotificationRequiered code: codeOrNil.
	aDSTwoFactorNotificationRequiered resume.
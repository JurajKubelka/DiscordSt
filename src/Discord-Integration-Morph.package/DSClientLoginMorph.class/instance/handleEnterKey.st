private - handling - login
handleEnterKey
	emailModel getString isEmpty ifTrue: [ ^ self ].
	passwordModel getString isEmpty ifTrue: [ ^ self ].
	self loginAction
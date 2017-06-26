ui
askForMessageAndSend
	"Ask for a message that should be sent (with the object).
	If Send button is pressed, the message is sent."
	| window |
	self isAuthenticated ifFalse: [ ^ self ].
	model := self specModelWithToolbar.
	window := model openWithSpec.
	window title: 'Send Object to Discord'.
	^ window
private
askForCredentials
	"Open a dialog where someone can write email and password.
	The values are stored into the client, using email:password: method."
	| model window |
	model := self specModelWithToolbar.
	window := model openWithSpec.
	window title: 'Login to Discord Chat'.
	window whenClosedDo: [ self signalAnswer ].
	^ window
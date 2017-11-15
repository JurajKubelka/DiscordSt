ui
askForDescriptionAndSend
	"If the client is authenticated, we ask for a description that should be sent
	with the stack trace."
	self client isAuthenticated ifFalse: [ ^ self ].
	DSMessageCommand new
		client: self client;
		text: self defaultText;
		fileSize: self fileSize;
		onAccept: [ :command | self setUserInputs: command; send ];
		execute
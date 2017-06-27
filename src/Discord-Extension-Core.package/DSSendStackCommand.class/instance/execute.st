execute
execute
	"Steps to send a stack to a Discord channel:
	- set filename
	- serialize the stack
	- create textural and grafical representation
	- ask for a description (message) and the Discord channel and send"
	UIManager default informUserDuring: [ :bar |
		bar max: 5; label: 'Preparing data: set file'.
		self setFileName.
		bar increment; label: 'Preparing data: textural output'.
		self setTextRepresentation.
		bar increment; label: 'Preparing data: taking screenshot'.
		self takeScreenshot.
		bar increment; label: 'Preparing data: serializing stack'.
		self serializeStack.
		bar increment; label: 'Data are ready to send'. ].
	self
		loginIfNecessary;
		askForDescriptionAndSend.
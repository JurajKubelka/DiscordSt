execute
execute
	"Send an object to a Discord channel using FUEL serialization."
	UIManager default informUserDuring: [ :bar |
		bar max: 5; label: 'Preparing data: set file'.
		self setFileName.
		bar increment; label: 'Preparing data: taking screenshot'.
		self takeScreenshot.
		bar increment; label: 'Preparing data: serializing object'.
		self serializeObject.
		bar increment; label: 'Data are ready to send'.  ].
	self
		loginIfNecessary;
		askForDescriptionAndSend
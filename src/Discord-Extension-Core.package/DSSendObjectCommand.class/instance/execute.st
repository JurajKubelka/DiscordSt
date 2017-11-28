execute
execute
	"Send an object to a Discord channel using FUEL serialization."
	self loginIfNecessary.
	UIManager default informUserDuring: [ :bar |
		bar max: 5; label: 'Preparing data: set file and author'.
		self setFileName; setAuthor.
		bar increment; label: 'Preparing data: taking screenshot'.
		self takeScreenshot.
		bar increment; label: 'Preparing data: serializing object'.
		self serializeObject.
		bar increment; label: 'Data are ready to send'.  ].
	self askForDescriptionAndSend.
execute
execute
	"Send an object to a Discord channel using FUEL serialization."
	UIManager default informUserDuring: [ :bar |
		bar max: 4; label: 'Preparing data: code snippet and author'.
		self setFileName; setAuthor; setCodeSnippet.
		bar increment; label: 'Preparing data: taking screenshot'.
		self takeScreenshot.
		bar increment; label: 'Data are ready to send'.  ].
	self
		loginIfNecessary;
		askForDescriptionAndSend
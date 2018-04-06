accessing - convenience
mentionString
	"Return display string that is visible for a user"
	<return: #String>
	^ '@', self username asString, '#', self discriminator asString
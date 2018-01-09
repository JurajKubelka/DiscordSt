testing
hasMessages
	"Return true if the channel already keeps some messages.
	In case of false, there might be some messages on the Discord server."
	^ messages isEmptyOrNil not
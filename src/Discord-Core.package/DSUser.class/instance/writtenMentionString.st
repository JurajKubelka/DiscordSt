accessing - convenience
writtenMentionString
	"Return a string that is used to mention a user"
	<return: #String>
	^ '<@', self id asString, '>'
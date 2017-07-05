running
setUp
	super setUp.
	"Let's wait a bit between two test cases, otherwise the Discord server may answer
	'You are being rate limited'"
	self class delayBetweenTests wait.
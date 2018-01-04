accessing
delayBetweenTests
	"Return a duration object that says how much time de we want to wait between two test cases.
	The reason is that the Discord server may answer 'You are being rate limited' for too intensive communication."
	^ 600 milliSeconds
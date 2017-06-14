asserting
assertDelay: integerInMilliseconds between: startDateAndTime and: stopDateAndTime
	"Assert that stopDateAndTime happens integerInMilliseconds milliseconds after startDateAndTime.	
	Difference (diff) should be positive or zero."
	| diff |
	diff := stopDateAndTime - startDateAndTime - integerInMilliseconds milliSeconds.
	self 
		assert: diff >= 0 milliSeconds 
		description: 'The difference is ', diff printString, ', but should be >= 0'.
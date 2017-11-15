asserting
assertDelay: integerInMilliseconds between: startDateAndTime and: stopDateAndTime
	"Assert that stopDateAndTime happens integerInMilliseconds milliseconds after startDateAndTime.	
	Difference (diff) should be positive or zero.
	We allow about 20% of tollerance (allowed)."
	| diff allowed |
	allowed := (integerInMilliseconds * 0.2) milliSeconds negated.
	diff := stopDateAndTime - startDateAndTime - integerInMilliseconds milliSeconds.
	self 
		assert: diff >= allowed
		description: 'The difference is ', diff printString, ', but should be >= ', allowed printString.
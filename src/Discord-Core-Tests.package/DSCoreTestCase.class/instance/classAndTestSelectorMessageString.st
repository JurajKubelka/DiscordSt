accessing
classAndTestSelectorMessageString
	"Return a message string that is easily to identify on Discord."
	^ String streamContents: [ :aStream |
		aStream 
			<< 'Message sent from the test case '
			<< self className	
			<< '>>#'
			<< self selector
			<< ' at '.
		DateAndTime now printOn: aStream ]
accessing
sequenceNumber: anInteger 
	self api ifNotNil: [ :anApi | anApi sequenceNumber: anInteger ]
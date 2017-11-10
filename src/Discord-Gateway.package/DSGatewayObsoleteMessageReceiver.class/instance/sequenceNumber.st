accessing
sequenceNumber
	^ self api ifNotNil: [ :anApi | anApi sequenceNumber ]
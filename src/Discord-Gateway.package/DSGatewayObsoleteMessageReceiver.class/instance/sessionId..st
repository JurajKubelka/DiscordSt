accessing
sessionId: aString 
	self api ifNotNil: [ :anApi | anApi sessionId: aString ]
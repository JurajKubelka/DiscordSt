accessing
sessionId
	^ self api ifNotNil: [ :anApi | anApi sessionId ]
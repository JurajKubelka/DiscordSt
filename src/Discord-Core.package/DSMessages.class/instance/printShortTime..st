printing
printShortTime: aDateAndTime
	^ aDateAndTime asDate = Date today
	ifTrue: [ aDateAndTime asTime asString ]
	ifFalse: [ aDateAndTime asDate asString ]
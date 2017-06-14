printing
printShortTime: aDateAndTime
	| local |
	local := aDateAndTime asDateAndTime asLocal.
	^ local asDate = Date today
	ifTrue: [ local asTime print24 ]
	ifFalse: [ local asDate asString ]
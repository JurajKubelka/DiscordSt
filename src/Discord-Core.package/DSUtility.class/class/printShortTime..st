printing
printShortTime: aDateAndTime
	| local |
	aDateAndTime ifNil: [ ^ aDateAndTime ].
	local := aDateAndTime asDateAndTime asLocal.
	^ local asDate = Date today
		ifTrue: [ local asTime print24 ]
		ifFalse: [ local asDate asString ]
instance creation
newTimestampElement
	| dateText timestampElement dateAndTime dateString |
	dateAndTime := self message timestamp asDateAndTime.
	dateString := dateAndTime asDate = Date today
		ifTrue: [ dateAndTime asTime print24 ]
		ifFalse: [ dateAndTime asDate yyyymmdd ].
	dateText := dateString asRopedText.
	dateText foreground: Color gray.
	timestampElement := BlTextElement new.
	timestampElement text: dateText.
	timestampElement
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c vertical fitContent.
			c padding: (BlInsets left: 5 right: 5) ].
	^ timestampElement
instance creation
newMessageHeadingElement
	"It includes author name, bot indicator, timestamp."
	| element |
	element := BlElement new
			layout: (BlLinearLayout horizontal alignBottomLeft; yourself);
			constraintsDo: [ :c |
				c horizontal fitContent.
				c vertical fitContent.
				c padding: (BlInsets all: 2) ];
			margin: (BlInsets all: 2);
			addChild: self newAuthorNameElement;
			yourself.
	self message timestamp isEmptyOrNil ifFalse: [
		element addChild: self newTimestampElement ].
	^ element
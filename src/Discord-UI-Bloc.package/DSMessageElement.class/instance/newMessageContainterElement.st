instance creation
newMessageContainterElement
	| element |
	element := BlElement new
			layout: BlLinearLayout vertical;
			constraintsDo: [ :c | 
				c horizontal matchParent.
				c vertical fitContent ];
			addChild: self newMessageHeadingElement;
			yourself.
	self message content isEmptyOrNil ifFalse: [ 
		element addChild: self newContentElement ].
	^ element

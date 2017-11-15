updating
updateChildren
	self removeChildren.
	self embed hasDescription ifTrue: [ self addChild: self newDescriptionElement ].
	self embed hasImage ifTrue: [ self addChild: self newImageElement ].
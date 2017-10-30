updating
updateChildren
	self removeChildren.
	self embed description ifNil: [ ^ self ].
	self addChild: self newDescriptionElement.
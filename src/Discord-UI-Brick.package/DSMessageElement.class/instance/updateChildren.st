updating
updateChildren
	self removeChildren.
	self addChild: self newAuthorLogoElement.
	self addChild: self newMessageContainterElement.
	self message hasImageAttachments ifFalse: [ ^ self ].
	self message attachments do: [ :attachment | 
		attachment isImage ifTrue: [ 
			self addChild: (self newImageElementFor: attachment) ] ]
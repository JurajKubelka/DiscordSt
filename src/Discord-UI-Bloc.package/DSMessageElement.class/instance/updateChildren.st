updating
updateChildren
	<script: 'self basic inspect'>
	self removeChildren.
	self message content ifNil: [ ^ self ].
	self addChild: self newAuthorLogoElement.
	self addChild: self newMessageContainterElement.
tests
testColor
	object := self newEmbedObject color: self color; yourself.
	self assert: object color equals: self color.
tests
testTitle
	object := self newEmbedObject title: self titleString; yourself.
	self assert: object title equals: self titleString.
tests
testContent2
	object := self newPost content: self newContentObject; yourself.
	self assert: object content equals: self newContentObject asString.
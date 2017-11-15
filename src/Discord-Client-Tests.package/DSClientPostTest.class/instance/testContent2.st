tests
testContent2
	post := self newPost content: self newContentObject; yourself.
	self assert: post content equals: self newContentObject asString.

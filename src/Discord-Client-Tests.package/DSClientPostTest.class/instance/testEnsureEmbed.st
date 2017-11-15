tests
testEnsureEmbed
	post := self newPost.
	post ensureEmbed.
	self assert: post embed notNil
tests
testContent3
	object := self newPost content: self contentLongString; yourself.
	self assert: object content size equals: DSWebhookPost contentLimit.
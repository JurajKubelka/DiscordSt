tests
testIfFail
	| block |
	client := DSWebhookClient new.
	block := [ :exception | exception ].
	client ifFail: block.
	self assert: client ifFailBlock equals: block.
tests
testSend
	| result |
	morph := self classToTest new.
	window := morph openInWindow.
	morph onSendDo: [ :ann | result := ann ].
	morph send.
	self assert: result notNil.
	self assert: result equals: #sendAction.
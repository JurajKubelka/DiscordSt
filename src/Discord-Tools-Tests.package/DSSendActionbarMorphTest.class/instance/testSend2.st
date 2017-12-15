tests
testSend2
	| result |
	morph := self classToTest new.
	window := morph openInWindow.
	morph onSendSend: #value: to: [ :ann | result := ann ].
	morph send.
	self assert: result notNil.
	self assert: result equals: #sendAction.
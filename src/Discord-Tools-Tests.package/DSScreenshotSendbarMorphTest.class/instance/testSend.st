tests
testSend
	| result |
	morph := self classToTest new.
	window := morph openInWindow.
	morph onAnnouncement: #sendAction do: [ :ann | result := ann ].
	morph send.
	self assert: result notNil.
	self assert: result equals: #sendAction.
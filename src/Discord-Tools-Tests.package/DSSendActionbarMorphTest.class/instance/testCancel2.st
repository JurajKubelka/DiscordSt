tests
testCancel2
	| result |
	morph := self classToTest new.
	window := morph openInWindow.
	morph onCancelSend: #value: to: [ :ann | result := ann ].
	morph cancel.
	self assert: result notNil.
	self assert: result equals: #cancelAction.
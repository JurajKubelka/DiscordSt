tests
testCancel
	| result |
	morph := self classToTest new.
	window := morph openInWindow.
	morph onCancelDo: [ :ann | result := ann ].
	morph cancel.
	self assert: result notNil.
	self assert: result equals: #cancelAction.
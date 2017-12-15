tests
testOnEmailUpdateDo
	| resultEmail |
	morph := self classToTest empty.
	morph onEmailUpdateDo: [ :email | resultEmail := email ].
	window := morph openInWindow.
	morph email: 'contact@example.com'.
	self assert: resultEmail equals: 'contact@example.com'.
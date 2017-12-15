tests
testOnPasswordUpdateDo
	| resultEmail |
	morph := self classToTest empty.
	morph onPasswordUpdateDo: [ :email | resultEmail := email ].
	window := morph openInWindow.
	morph password: 'secret'.
	self assert: resultEmail equals: 'secret'.
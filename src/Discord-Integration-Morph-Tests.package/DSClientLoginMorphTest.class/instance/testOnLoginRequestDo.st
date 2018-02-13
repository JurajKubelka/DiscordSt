tests
testOnLoginRequestDo
	| resultEmail resultPassword |
	"Fix Travis-CI issue, where the Pharo window extent is 10@10
	and thus the simulateClick does not work (morph's window size is 410@83."
	DisplayScreen actualScreenSize < (400@400) ifTrue: [ 
		self skip: 'This does not work on ', DisplayScreen actualScreenSize asString, ' window size.' ].
	morph := self classToTest filled.
	morph onLoginRequestDo: [ :email :password | resultEmail := email. resultPassword := password ].
	window := morph openInWindow.
	morph submorphs third simulateClick.
	self assert: resultEmail equals: 'contact@example.com'.
	self assert: resultPassword equals: 'secret password'.
	
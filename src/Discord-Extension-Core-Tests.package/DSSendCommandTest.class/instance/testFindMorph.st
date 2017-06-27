tests-utility
testFindMorph
	| morph window windowTwo |
	morph := self anyString asMorph.
	window := morph openInWindow.
	[ 
		command := self newCommand.
		self setMorphModel.
		window model: command morphModel.
		windowTwo := command findMorph.
		self assert: windowTwo == window.
	] ensure: [ window delete ].
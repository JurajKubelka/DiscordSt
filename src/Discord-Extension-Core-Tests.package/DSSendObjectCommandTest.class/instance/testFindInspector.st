tests
testFindInspector
	| window windowTwo |
	command := self newObject.
	self setMorphModel.
	window := GTInspector openOn: command morphModel.
	[ 
		windowTwo := command findMorph.
		self assert: windowTwo == window.
	] ensure: [ window delete ].
tests
testFindPaneInspector
	| window windowTwo |
	command := self newObject.
	command object: Object new.
	window := GTInspector openOn: Morph new.
	[ 
		(window model panes flatCollect: #presentations) 
			first selection: command morphModel.
		windowTwo := command findMorph.
		self assert: windowTwo == window
	] ensure: [ window delete ]
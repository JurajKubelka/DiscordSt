tests
testFindPlayground
	| window windowTwo |
	command := self newObject.
	command object: Object new.
	window := GTPlayground openOn: (GTPlayPage new saveContent: 'Object new').
	[ 
		(window model presentations flatCollect: [ :eachInspector | 
			eachInspector panes flatCollect: #presentations ]) 
				first selection: command morphModel.
		windowTwo := command findMorph.
		self assert: windowTwo == window
	] ensure: [ window delete ]
utility
findPaneInspector
	"Search for an object inside of a GT-Inspector"

	^ World submorphs
		detect: [ :e | 
			e model class = GTInspector
				and: [ (e model panes flatCollect: #presentations) anySatisfy: [ :presentation | presentation entity = self morphModel ] ] ]
		ifNone: nil
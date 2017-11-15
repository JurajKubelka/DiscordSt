utility
findPlayground
	"Search for an object inside of a GT-Playground"

	^ World submorphs
		detect: [ :e | 
			e model class = GTPlayground
				and: [ (e model presentations flatCollect: [ :eachInspector | eachInspector panes flatCollect: #presentations ])
						anySatisfy: [ :presentation | presentation entity = self morphModel ] ] ]
		ifNone: nil
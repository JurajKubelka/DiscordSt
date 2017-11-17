execute
execute
	World submorphs
		detect: [ :e | 
			e model class = GTInspector
				and: [ (e model panes flatCollect: #presentations) anySatisfy: [ :presentation | 
						presentation entity = self model ] ] ]
		ifFound: [ :aMorph | self morph: aMorph ]
		ifNone: nil
execute
execute
	World submorphs
		detect: [ :e | 
			e model class = GTPlayground
				and: [ (e model presentations flatCollect: [ :eachInspector | 
							eachInspector panes flatCollect: #presentations ])
								anySatisfy: [ :presentation | presentation entity = self model ] ] ]
		ifFound: [ :aMorph | self morph: aMorph ]
		ifNone: [ "ignore" ]
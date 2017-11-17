execute
execute
	World submorphs 
		detect: [ :e | e model class = GTInspector and: [ e model entity = self model ] ] 
		ifFound: [ :aMorph | self morph: aMorph ]
		ifNone: nil
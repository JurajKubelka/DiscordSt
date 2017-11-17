execute
execute
	World submorphs 
		detect: [ :aMorph | aMorph model == self model ] 
		ifFound: [ :aMorph | self morph: aMorph ]
		ifNone: [ "ignore" ].
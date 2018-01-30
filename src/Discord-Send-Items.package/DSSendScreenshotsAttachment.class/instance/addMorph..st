adding
addMorph: aMorph
	^ screenshots addLast: (DSMorphScreenshot new morph: aMorph; yourself)
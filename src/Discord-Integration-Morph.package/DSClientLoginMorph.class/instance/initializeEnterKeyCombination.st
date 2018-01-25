initialization
initializeEnterKeyCombination
	self submorphs first
		bindKeyCombination: Character cr asKeyCombination
		toAction: [ self handleEnterKey ].
	self submorphs second
		bindKeyCombination: Character cr asKeyCombination
		toAction: [ self handleEnterKey ].

initialization
initializeTabKeyCombination
	self submorphs first
		bindKeyCombination: Character tab asKeyCombination
		toAction: [ self submorphs second takeKeyboardFocus ].
	self submorphs first
		bindKeyCombination: Character tab shift asKeyCombination
		toAction: [ self submorphs third takeKeyboardFocus ].
	self submorphs second
		bindKeyCombination: Character tab asKeyCombination
		toAction: [ self submorphs third takeKeyboardFocus ].
	self submorphs second
		bindKeyCombination: Character tab shift asKeyCombination
		toAction: [ self submorphs first takeKeyboardFocus ]
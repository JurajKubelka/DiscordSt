initialization
initialize
	super initialize.
	self addMorphBack: self newSendbarMorph.
	self addMorphBack: self newAccountDetailsMorph.
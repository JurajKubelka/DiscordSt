private - adding
addAuthenticatedClientMorph
	| morph |
	morph := self newAuthenticatedClientMorph.
	self addMorphBack: morph.
	^ morph
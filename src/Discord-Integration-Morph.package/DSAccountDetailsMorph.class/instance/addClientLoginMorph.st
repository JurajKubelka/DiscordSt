private - adding
addClientLoginMorph
	| loginMorph |
	loginMorph := self newClientLoginMorph.
	self addMorphBack: loginMorph.
	^ loginMorph
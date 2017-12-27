running
testAddMorph
	| morph |
	morph := Morph new.
	item := self classToTest new.
	item addMorph: morph.
	self assert: item screenshots size equals: 1.
	self assert: item screenshots first morph equals: morph.
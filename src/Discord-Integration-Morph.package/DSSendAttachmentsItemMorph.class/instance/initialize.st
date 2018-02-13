initialization
initialize
	super initialize.
	table := self newTable.
	self addMorphBack: table.
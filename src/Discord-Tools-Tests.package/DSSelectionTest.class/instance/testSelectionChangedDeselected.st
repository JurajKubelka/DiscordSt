tests
testSelectionChangedDeselected
	| result |
	selection := self classToTest new.
	selection isSelected: true.
	selection onSelectionChangedDo: [ :ann | result := ann ].
	selection isSelected: false.
	self assert: result notNil.
	self assert: result class equals: DSSelectionChangedAnnouncement.
	self assert: result object equals: selection.
	self deny: result state.
	
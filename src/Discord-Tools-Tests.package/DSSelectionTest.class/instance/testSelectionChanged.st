tests
testSelectionChanged
	| result |
	selection := self classToTest new.
	selection onSelectionChangedDo: [ :ann | result := ann ].
	selection isSelected: true.
	self assert: result notNil.
	self assert: result class equals: DSSelectionChangedAnnouncement.
	self assert: result selection equals: selection.
	self assert: result state.
	
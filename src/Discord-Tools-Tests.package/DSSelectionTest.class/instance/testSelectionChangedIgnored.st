tests
testSelectionChangedIgnored
	| result |
	selection := self classToTest new.
	selection isSelected: true.
	selection onSelectionChangedDo: [ :ann | result := ann ].
	selection isSelected: true.
	self assert: result isNil.
	
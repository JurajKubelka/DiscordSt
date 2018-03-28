tests
testEnabledChangedIgnored
	| result |
	selection := self classToTest new.
	selection isEnabled: false.
	selection onSelectionChangedDo: [ :ann | result := ann ].
	selection isEnabled: false.
	self assert: result isNil.
	
tests
testEnabledChangedToTrue
	| result |
	selection := self classToTest new.
	selection isEnabled: false.
	selection onEnabledChangedDo: [ :ann | result := ann ].
	selection isEnabled: true.
	self assert: result notNil.
	self assert: result class equals: DSEnabledChangedAnnouncement.
	self assert: result object equals: selection.
	self assert: result state.
	
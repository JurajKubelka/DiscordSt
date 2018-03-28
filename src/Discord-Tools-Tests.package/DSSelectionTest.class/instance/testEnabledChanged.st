tests
testEnabledChanged
	| result |
	selection := self classToTest new.
	selection onEnabledChangedDo: [ :ann | result := ann ].
	selection isEnabled: false.
	self assert: result notNil.
	self assert: result class equals: DSEnabledChangedAnnouncement.
	self assert: result object equals: selection.
	self deny: result state.
	
tests-accessing
testEnabledChanged
	| result |
	result := OrderedCollection new.
	attachment := self classToTest new.
	attachment onEnabledChangedDo: [ :announcement | 
		self assert: announcement object equals: attachment.
		result add: announcement ].
	attachment isEnabled: attachment isEnabled not.
	self assert: result size equals: 1.
	attachment isEnabled: attachment isEnabled.
	self assert: result size equals: 1.

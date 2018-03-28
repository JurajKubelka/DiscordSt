tests-accessing
testSelectionChanged
	| result |
	result := OrderedCollection new.
	attachment := self classToTest new.
	attachment onSelectionChangedDo: [ :announcement | 
		self assert: announcement attachment = attachment.
		result add: announcement ].
	attachment isSelected: attachment isSelected not.
	self assert: result size equals: 1.
	attachment isSelected: attachment isSelected.
	self assert: result size equals: 1.
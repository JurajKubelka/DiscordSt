accessing
isSelected: aBoolean
	isSelected = aBoolean
		ifTrue: [ ^ self ].
	isSelected := aBoolean.
	self announceSelectionChanged: aBoolean
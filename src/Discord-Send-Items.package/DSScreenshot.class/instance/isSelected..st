accessing
isSelected: aBoolean
	self assert: [ aBoolean or: [ aBoolean not ] ] description: 'It should be a boolean'.
	isSelected := aBoolean.
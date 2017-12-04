accessing
isSelected: anObject
	isSelected := anObject.
	self changed: #isSelected with: anObject.
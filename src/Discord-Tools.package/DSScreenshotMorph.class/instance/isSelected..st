accessing
isSelected: anObject
	isSelected := anObject.
	self inform: 'Screenshot State: ', isSelected asString.
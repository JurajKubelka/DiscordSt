initialization
initialize
	super initialize.
	sharedData := #().
	postExecutions := OrderedCollection new: 1.
	otherWindows := OrderedCollection new: 1.
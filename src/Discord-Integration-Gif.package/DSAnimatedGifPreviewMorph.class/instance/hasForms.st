testing
hasForms
	^ self reader notNil and: [ self reader forms isEmptyOrNil not ]
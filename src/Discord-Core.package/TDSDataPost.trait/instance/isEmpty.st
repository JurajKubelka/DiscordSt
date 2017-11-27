testing
isEmpty
	^ self content isNil and: [ self embed isNil and: [ self mimeParts isEmptyOrNil ] ]
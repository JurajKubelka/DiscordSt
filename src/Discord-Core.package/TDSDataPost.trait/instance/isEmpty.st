testing
isEmpty
	^ self content isNil and: [ self hasEmbeds and: [ self mimeParts isEmptyOrNil ] ]
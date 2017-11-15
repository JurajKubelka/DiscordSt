testing
isEmpty
	^ super isEmpty and: [ self fileParts isEmptyOrNil ]
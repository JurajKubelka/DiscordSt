accessing - fields
fieldsAt: key ifAbsent: aBlock
	^ self fieldsDictionary at: key ifAbsent: aBlock
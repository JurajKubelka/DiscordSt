accessing - fields
fieldsAt: key ifAbsentPut: block 
	^ self fieldsDictionary at: key ifAbsentPut: block
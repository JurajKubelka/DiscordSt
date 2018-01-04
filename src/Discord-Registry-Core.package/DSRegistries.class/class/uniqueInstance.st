accessing
uniqueInstance
	uniqueInstance ifNil: [ self setUniqueInstance ].
	^ uniqueInstance